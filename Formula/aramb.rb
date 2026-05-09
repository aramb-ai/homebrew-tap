# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta4/aramb-darwin-arm64"
      sha256 "4e12f1569f8f07e76d25582e888c0913d534e10560d891a861a63f33ed2ecb22"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta4/aramb-darwin-amd64"
      sha256 "fcae476b144fe8080c4de06a45a77b325047d37b62668fc3e7043fbaac490142"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta4/aramb-linux-arm64"
      sha256 "87cd5d3c8141ecbf7bbb4c5661ccfa526a95723f83eef39acef13350d8bf901b"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta4/aramb-linux-amd64"
      sha256 "b0f042699a6014b882d2f412fb1b4eb8572b0de0629125fb04ffee89782430eb"
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
