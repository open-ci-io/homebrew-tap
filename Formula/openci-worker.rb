class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.11/openci-worker-v0.7.11-darwin-arm64.tar.gz"
      sha256 "15d69db5f0ea9d26c3570efa095ac18d3c3d004a03432f600c987307e911c5d8"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
