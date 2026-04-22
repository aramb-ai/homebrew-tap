# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.36-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.36-beta1/aramb-darwin-arm64"
      sha256 "558eab69a9d329924bff9ce5acfa833c088644a50b9010021f3ab09740cfe2cc"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.36-beta1/aramb-darwin-amd64"
      sha256 "d6866552bd29e62b56ccffe42d78d533f3c21f4cecdcb1b94cd3ab6b93696d40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.36-beta1/aramb-linux-arm64"
      sha256 "0fb0968db996f0d31605af75ad3ee35f97b1a34c2b3930a82b6d7577152cef2e"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.36-beta1/aramb-linux-amd64"
      sha256 "2993b14d8d7d87ca390735b38fe3f5bdeb4ff0f0ae3fa30c9e5174206c607174"
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
