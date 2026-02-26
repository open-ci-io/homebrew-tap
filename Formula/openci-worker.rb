class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.6/openci-worker-0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "9a5b9448c15f6d674314b0ce0eb68839b63c0cd7296486a25ffaa6fa9fd3c7b9"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
