# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta2/aramb-darwin-arm64"
      sha256 "19ceb7a26d38733dfcb37226b20dc3277af7871c621d29ec9de7e718114532a0"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta2/aramb-darwin-amd64"
      sha256 "19ee2251ec9c2074ec21bd4069f5cce527b51d57e93e4f6ae125136765e210d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta2/aramb-linux-arm64"
      sha256 "059d4f3536171a8d6d97e853b48b8d11bae3b9b675f28fcf3cbde13f371b6a21"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta2/aramb-linux-amd64"
      sha256 "d8de4b1b50f7cbf6792cb35b8300047a0625ad5d9747d0b73b3848d9e292d9ab"
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
