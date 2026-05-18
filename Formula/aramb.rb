# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-darwin-arm64"
      sha256 "16fb6d7d082106116d9aca0697eab779efa71435df0e325f64c186a3b48b3e6f"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-darwin-amd64"
      sha256 "8970b9393a8ebd3f91c88e88d4cf5f481d11846a9c8be079a2c6b8105e58d5ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-linux-arm64"
      sha256 "951cc5e0771ce653eb2ac62f8c0648c93d247687b1c1b1f95c972235acecfccd"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-linux-amd64"
      sha256 "b9f323de951ee61c9c070daf04ea3b1edc056a064d06bb455219c456e30d00db"
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
