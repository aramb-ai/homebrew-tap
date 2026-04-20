# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.30-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.30-beta1/aramb-darwin-arm64"
      sha256 "ef9df002d5a8f42535568db1e9abab9d99cb53a69bacb174bc8c64a97fedae1a"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.30-beta1/aramb-darwin-amd64"
      sha256 "a2362d10252359a993263bd8987b301a372fee1ff11cb28027709070cff3fada"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.30-beta1/aramb-linux-arm64"
      sha256 "45eddb8e3699206c052c00ad830ac4a62725ef121b1db769bf4f3b2d8adc3eee"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.30-beta1/aramb-linux-amd64"
      sha256 "98941507d575edc1b4c5f1136ec1106103ccfa3511dbcfdef165ef1670834b29"
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
