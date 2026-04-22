# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta1/aramb-darwin-arm64"
      sha256 "9c2b17232d3fae1c8b6073d15deeb6497ff84a70b861e093868dc6e57c15bf68"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta1/aramb-darwin-amd64"
      sha256 "cf318458cced6fd0444949f405bec96ebca60d649aac92846fbae9c39298442a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta1/aramb-linux-arm64"
      sha256 "93f91d3191ae58489e6584f8e064f6fb215bd2625c1fbb49d6aede0374a68aa7"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta1/aramb-linux-amd64"
      sha256 "53c86ea1670e0985c7aeba0c4b3fcd4f825359da06929f01ef4f9c07ece4f2dc"
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
