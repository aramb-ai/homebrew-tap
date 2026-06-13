# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta11/aramb-darwin-arm64"
      sha256 "8f03b4623edbb7dadc5297c1dea6c8826842096368a1e6b48ea3bf081e4698a9"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta11/aramb-darwin-amd64"
      sha256 "233d7150562493475ea52e7db09da99724df8df06f4cf8a041cae76f35ca593a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta11/aramb-linux-arm64"
      sha256 "cb09c1e69bc4a68e776255a1b474c782bcc2897c7b9b392260a47e59dcd0e1a4"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta11/aramb-linux-amd64"
      sha256 "cc4c6c6070f388c533fbad7dccfe61d135e3eb73c34431e393362824f530ff9b"
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
