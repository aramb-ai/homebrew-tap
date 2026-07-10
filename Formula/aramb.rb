# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta15/aramb-darwin-arm64"
      sha256 "cb5e5c8c84c4e670f48fef540ddc4951647eeaab15f16c0b8c62986a3b04d1d0"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta15/aramb-darwin-amd64"
      sha256 "1d401e5f6778f0817abe0be275a3a535025f7ea0f07ef1c07c9cc9765961ee4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta15/aramb-linux-arm64"
      sha256 "40f2675a33e77b6af97f20dcdbd95601c85047e6cc2eee3d57d1f0b17428d033"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta15/aramb-linux-amd64"
      sha256 "b0891d3db2f377430fdec02be6633d66b93e51c1be82270648a16a27397316b6"
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
