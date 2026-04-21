# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "0.0.33-beta1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.33-beta1/aramb-darwin-arm64"
      sha256 "e61b5dea2147cb9fc0e556b54914d39e283c6f5e7a876d913907187b6fa1f821"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.33-beta1/aramb-darwin-amd64"
      sha256 "dbde39f463b86002a90eab6bd3ff35fc34c26eb1e71059ce4dccc20a9bc77476"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.33-beta1/aramb-linux-arm64"
      sha256 "23d45b5018970f80562023691abe263cd034ecaaaf6616ae6683b396caecb39a"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v0.0.33-beta1/aramb-linux-amd64"
      sha256 "f56b001c39c50195e3aa5f9ccf5a73a87e7fe08b10961efd8be34a9235163b1a"
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
