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
      sha256 "bc7efe5a1eda7beb31a79e160bb5f267943c1858ee730f77ba2a0d8ccb6ebd8d"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-darwin-amd64"
      sha256 "df303b1e9e1a6508963832b17690393fa906bb1b5aaf85abb305ee2b6f96f23b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-linux-arm64"
      sha256 "4a334638866159bb8d40049b07d51747b792b5a4bf4f2e75c3e81ab2ec0162cb"
    else
      url "https://github.com/aramb-ai/release-beta/releases/download/v1.0.0-beta6/aramb-linux-amd64"
      sha256 "0b81ff0813a27b07f444cd07fe53eec76e5f3b7f9683ad78e2fb9be3c13199ed"
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
