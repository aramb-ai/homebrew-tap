# typed: false
# frozen_string_literal: true

class Aramb < Formula
  desc "aramb CLI - cloud deployment and management tool"
  homepage "https://github.com/aramb-ai/aramb-cli"
  version "1.0.0-beta3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta3/aramb-darwin-arm64"
      sha256 "0ef317edf836369f7a097b88463cda435a5fc4964b440914131af9ba33613e0c"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta3/aramb-darwin-amd64"
      sha256 "c4a3d1611cef26cae524e1c005941d59b70fdb3371d935588bd218267bd194d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta3/aramb-linux-arm64"
      sha256 "4d4751e2aa223dd6578e77e9fb3ed86f10e3dc55613652ac52e5f45a8e8d795b"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta3/aramb-linux-amd64"
      sha256 "149f17c54d2de735df3800384d2429ecd8db2235c9d7c78726526ee746565333"
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
