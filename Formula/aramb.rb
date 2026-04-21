# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.35-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.35-beta1/aramb-darwin-arm64"
      sha256 "b11c1cbc9a9705c85a1d71fcb949f4acb338adf5fee661393da55f6a03c5907e"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.35-beta1/aramb-darwin-amd64"
      sha256 "23369af5dfb8718a2fca488e330764308b8e0957f88dc82bb4cd08bdbb930b16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.35-beta1/aramb-linux-arm64"
      sha256 "41f8d555f79c8bf14b3d73068327de024ff6c8231f29da2626f2f237cd7c1b9f"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.35-beta1/aramb-linux-amd64"
      sha256 "a94b6172254a462076879b715cc29db4199647b6424eecc55c823ee4b470d117"
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
