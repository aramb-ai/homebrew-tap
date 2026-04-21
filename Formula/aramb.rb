# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.34-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.34-beta1/aramb-darwin-arm64"
      sha256 "489ae5cc95bd49cead70404b026a8ef37d8a1f78353a91608aa51984018d926e"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.34-beta1/aramb-darwin-amd64"
      sha256 "535f924f1b23a8a80552402d5a2c0d72d8e959606ed56ed7bd8088d7d20a6963"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.34-beta1/aramb-linux-arm64"
      sha256 "078eee76c4612a7d8e0ce544f0a3a72e06fbaec8de6b8380ed48ac9f32be1844"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.34-beta1/aramb-linux-amd64"
      sha256 "4f451863711b0e85a1de8ea2a5f781c17a44123b42b597977b6569e93ab4746a"
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
