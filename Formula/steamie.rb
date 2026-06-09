# typed: false
# frozen_string_literal: true

# This formula is automatically updated by the CD workflow on each release.
# Manual changes will be overwritten.

class Steamie < Formula
  desc "Terminal-native Steam client written in Rust"
  homepage "https://github.com/LargeModGames/steamie"
  version "0.4.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/LargeModGames/steamie/releases/download/v#{version}/steamie-macos-aarch64.tar.gz"
    sha256 "fed58dcda4a410999888844269716c5e3f81677539db57f0c5d51514b8ee8837"
  end

  on_intel do
    url "https://github.com/LargeModGames/steamie/releases/download/v#{version}/steamie-macos-x86_64.tar.gz"
    sha256 "76e10bb58883f41074733f6fea42e76d348d66112e68ab45ec4565e25c23bb16"
  end

  def install
    bin.install "steamie"
  end

  def caveats
    <<~EOS
      steamie talks to Steam's connection-manager protocol. On first run, sign in with a
      QR code (default) or your Steam credentials.

      steamie is unofficial and not affiliated with Valve or Steam.
      More info: https://github.com/LargeModGames/steamie
    EOS
  end

  test do
    assert_match "steamie", shell_output("#{bin}/steamie --version")
  end
end
