# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta8/aramb-darwin-arm64"
      sha256 "693ae2622da09c0c3eefcebf7012b986335f827a7c2c00333d6828acec79b23d"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta8/aramb-darwin-amd64"
      sha256 "ac4ed06e66f98b5cc2cf86018d33f087d9225ed33a86915b41aa34fd368ab711"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta8/aramb-linux-arm64"
      sha256 "a10fe043ce4eb7720e875865477f146e6f3d355b47798ad8e16bacf09b147521"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta8/aramb-linux-amd64"
      sha256 "b3d57d4343cea89a2e5d309b281235e85203da7fc0571eef3f7c289e926589a1"
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
