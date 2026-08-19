# Homebrew formula for acxorcist.
#   brew install framallo/acxorcist/acxorcist
class Acxorcist < Formula
  desc "Batch-convert MP3s into ACX-compliant audiobook files with one command"
  homepage "https://github.com/framallo/acxorcist"
  url "https://github.com/framallo/acxorcist/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c4b545d7318444e7feb01cf5e71fbd751337f2a458bd89dad00b61f79cdf2ca7"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "acxorcist"
  end

  test do
    # `report` on an empty directory is a no-op that exits 0.
    assert_match "ACX compliance report", shell_output("#{bin}/acxorcist report")
  end
end
