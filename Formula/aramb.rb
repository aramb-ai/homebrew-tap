# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-darwin-arm64"
      sha256 "3802e13fa3d413ec66db277396a0878585737bd097d60b26c9f20146be07a78f"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-darwin-amd64"
      sha256 "f99f189cb3bcc2831bb12079240ab9e1ff9e1ef3fde5c7d92a10e62590b468e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-linux-arm64"
      sha256 "4b46e9dd07257018cbb0a6795820b34b2234f82b7b47b20e582a6b6276fea778"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-linux-amd64"
      sha256 "823d5689fe4110f599edbc4f02a8ea48be2fcc65f2fbd2ed37d7675a46ade7f7"
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
