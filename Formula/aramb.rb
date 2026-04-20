# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.32-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.32-beta1/aramb-darwin-arm64"
      sha256 "1f87b9ae387bc1afc53ca4b1705f28c873d2cb04543099262db31273969f39b4"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.32-beta1/aramb-darwin-amd64"
      sha256 "8c83ce365a649354df9594dfc20042264c74ae49435a18d4462400b759d4954e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.32-beta1/aramb-linux-arm64"
      sha256 "0dd642d8c7e604d130431587be292c46b3923edcb595970293825d1c822692a1"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.32-beta1/aramb-linux-amd64"
      sha256 "5870756ee15f0a54533db56660090b7a397a467898cbf296df8922a0d65316be"
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
