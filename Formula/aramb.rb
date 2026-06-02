# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta10/aramb-darwin-arm64"
      sha256 "677c6abe3e967f4ccb628dcd7d22fe1b7b0b91caf149f434bca4bb081ce1e8c0"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta10/aramb-darwin-amd64"
      sha256 "ccf639a81c9f8723ea2c231ea6cf4054a1aa2424f5ffdeac50ffa24eafd0f910"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta10/aramb-linux-arm64"
      sha256 "c87444ddfeb6d7f61bfa8ebbdc120acabd143e68055ec3e22ea8241f84c9a922"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta10/aramb-linux-amd64"
      sha256 "af99af25eee7a19f84adc172071fc8493acf8dfaa07daa1e80af3ec5f2a7d64a"
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
