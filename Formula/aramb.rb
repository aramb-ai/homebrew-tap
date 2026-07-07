# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta14/aramb-darwin-arm64"
      sha256 "1bfdeed8b0daa54037587f0c30ca322803d4142dd5bdd6b8806c1a0a269b2ace"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta14/aramb-darwin-amd64"
      sha256 "f8475afeee754b5cd748d7bd8709d1071f19125aa8271efabae338590bb24da3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta14/aramb-linux-arm64"
      sha256 "e8051a7f9375dd6d45bf069db98ebea246497578c13de4c0dfb527a27a186d4c"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta14/aramb-linux-amd64"
      sha256 "c04f975ebb65e097e86eee475ef94d21b4c63fb21ac354784d0e1e5a2e61794d"
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
