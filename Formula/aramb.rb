# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta9/aramb-darwin-arm64"
      sha256 "0c4de5d01385a3c874ee13f552c43c7412913c0a8e0217c4d830e4528669d9b3"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta9/aramb-darwin-amd64"
      sha256 "8f478b93fb54c062ce0e372afa1735c82a40d08b1afbd68a3880661dd1b7b029"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta9/aramb-linux-arm64"
      sha256 "c15b6e04b99a56c2826ee4d383a91405676d5faf44ec17dde73f8681e61e082c"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta9/aramb-linux-amd64"
      sha256 "dcbeecdd470d8c24e7fa51c09b2660c379b663a62f8b3ef7b8963a1969e56d55"
    end
  end

  def install
    binary = Dir["aramb-*"].first
    bin.install binary => "aramb"
  end

  test do
    system "\#{bin}/aramb", "--version"
  end
end
