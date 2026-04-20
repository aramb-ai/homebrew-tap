# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v#{version}/aramb-darwin-arm64"
      sha256 "placeholder"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v#{version}/aramb-darwin-amd64"
      sha256 "placeholder"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v#{version}/aramb-linux-arm64"
      sha256 "placeholder"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v#{version}/aramb-linux-amd64"
      sha256 "placeholder"
    end
  end

  def install
    binary = Dir["aramb-*"].first
    bin.install binary => "aramb"
  end

  test do
    system "#{bin}/aramb", "--version"
  end
end
