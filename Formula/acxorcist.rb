# Homebrew formula for acxorcist — self-contained Rust binary (no ffmpeg).
#   brew install framallo/acxorcist/acxorcist
class Acxorcist < Formula
  desc "Batch-convert MP3s into ACX-compliant audiobook files — one binary, no ffmpeg"
  homepage "https://github.com/framallo/acxorcist"
  version "0.2.0"
  license "MIT"

  BASE = "https://github.com/framallo/acxorcist/releases/download/v0.2.0".freeze

  on_macos do
    on_arm do
      url "#{BASE}/acxorcist-aarch64-apple-darwin.tar.gz"
      sha256 "c485a2770e7f3250a5ec57c88b1599f8a4935cd774ca8bb81ead966a5419c4cc"
    end
    on_intel do
      url "#{BASE}/acxorcist-x86_64-apple-darwin.tar.gz"
      sha256 "c9bdcd92ff0b73524207bd60fc50b00e3987c921656ef269ee65997c1a08e09f"
    end
  end

  on_linux do
    on_intel do
      url "#{BASE}/acxorcist-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d726a0786379a72a5dcb654054bbf5739ad9343ab26472a57439960310df112c"
    end
  end

  def install
    bin.install "acxorcist"
  end

  test do
    assert_match "ACX compliance report", shell_output("#{bin}/acxorcist report")
  end
end
