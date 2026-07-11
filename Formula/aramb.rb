# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta16/aramb-darwin-arm64"
      sha256 "a13067323f147faf6b14f37420a25bd6fd4f4ffbb99c43c1bae2b44f89548fd2"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta16/aramb-darwin-amd64"
      sha256 "2a1efbe9cbe8b0f92780b02a2e7d6a1be5d5cb13143e0893203f09080baa4edf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta16/aramb-linux-arm64"
      sha256 "75a890afe2c4e740303d12464c7129a0b77153f18b11c39eed34d19d6f880cdb"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta16/aramb-linux-amd64"
      sha256 "21f9a6e6d46445cb49d819156b29e4e5e95a59aebd15dc2830b2b185089ad068"
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
