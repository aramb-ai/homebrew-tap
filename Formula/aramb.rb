# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta5/aramb-darwin-arm64"
      sha256 "e62352a62b1d0a871188d930fb9fac9cf6d4c9edf134ce477a8adb3c26ecccb7"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta5/aramb-darwin-amd64"
      sha256 "35eeb9a2d9ad6a8a8a509ed9edf7e17891f788202df8deb480e4d373076cb4d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta5/aramb-linux-arm64"
      sha256 "9f4d5bc9bd952ea165f35aa18e3f03265132b489f51ad4e4118545119255fadc"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta5/aramb-linux-amd64"
      sha256 "45f3558541ccd4bdee98648390915d81dd265aef7648e118e26506fded5e9f18"
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
