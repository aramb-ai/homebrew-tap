# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.31-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.31-beta1/aramb-darwin-arm64"
      sha256 "82c5f368b1e574a106d1e7d7fe511c5bc2264eb17fd6be2d69528fc82ceb19bd"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.31-beta1/aramb-darwin-amd64"
      sha256 "e271a7741f352332038c3cae5b97afd2c00ba88bc95159e9cb6b69f17ae24415"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.31-beta1/aramb-linux-arm64"
      sha256 "755ad80345d91ef7e2e5cf8d9d4c5c2dee7109b9f69868515b9167c4fb8a5f17"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.31-beta1/aramb-linux-amd64"
      sha256 "d30febf5f98d8f8fd0dc1e3474ac36ea5896a990a1a37d8bad879088830e1e85"
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
