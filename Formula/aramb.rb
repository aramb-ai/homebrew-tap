# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta13/aramb-darwin-arm64"
      sha256 "7a51cbe98d3e64323c188cd37a084b915ff26024e56496c22b0f184e799f1b74"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta13/aramb-darwin-amd64"
      sha256 "4b602ab9325602fec406bdb7a3ffddf22ebe79ab931573ee0e33cfb1e19561d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta13/aramb-linux-arm64"
      sha256 "84e15fdd24e9b25495cf3fcf7b7e3248846f3cd7000b1327ceaa48dbbb5714a8"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta13/aramb-linux-amd64"
      sha256 "33ef3e758770c1d7ca24a3083e36a732622f17f49eafff18b0b8ec82097e931a"
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
