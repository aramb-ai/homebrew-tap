# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta12/aramb-darwin-arm64"
      sha256 "13500aa3df770184637cc44011bdb411d71092967434cdd31ad70c529c0723aa"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta12/aramb-darwin-amd64"
      sha256 "8b6222f9d3b7ba4225c0f2c63097daee13bf3b16fed2533202106e1d87aaef30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta12/aramb-linux-arm64"
      sha256 "9fcb344d8e0d559ef134553b3ac25395737583d0b55305255d051589d838231b"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta12/aramb-linux-amd64"
      sha256 "42522536958c87047479500c9aefc5e51065faf31851e19e124724268496e6ff"
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
