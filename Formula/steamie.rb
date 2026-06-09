# typed: false
# frozen_string_literal: true

# This formula is automatically updated by the CD workflow on each release.
# Manual changes will be overwritten.

class Steamie < Formula
  desc "Terminal-native Steam client written in Rust"
  homepage "https://github.com/LargeModGames/steamie"
  version "0.4.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/LargeModGames/steamie/releases/download/v#{version}/steamie-macos-aarch64.tar.gz"
    sha256 "f722137d0441146c3e04709308c5b624521eda27aecb69b00024fdfad41936a0"
  end

  on_intel do
    url "https://github.com/LargeModGames/steamie/releases/download/v#{version}/steamie-macos-x86_64.tar.gz"
    sha256 "be7d5d3f81002bfcf88dd01dc9faeda742d42bc8c7dd33868a7dafa139fffb43"
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
