# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta7/aramb-darwin-arm64"
      sha256 "07703d513ed61cbd5e63b1596b648dd695e710b4045d71a1c18a7de6958ce3e1"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta7/aramb-darwin-amd64"
      sha256 "b41535963d3c8c2862e1d20759dffe033808a5a310bad2c91fe7b5794b7ddaf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta7/aramb-linux-arm64"
      sha256 "197f1681f7314072034a546746d7f88d4b01bb37a7b4f2f52716f932e8686a90"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta7/aramb-linux-amd64"
      sha256 "be13467bff6d4a3a51c09a6a579de0f7a59a5040edf7670e415ee91427fb1b9c"
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
