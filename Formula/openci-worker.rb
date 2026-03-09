class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.2/openci-worker-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "0aa18e9a1bced0a9d826d4878a78bfdc8c531c511edea0792aea6173eb740174"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
