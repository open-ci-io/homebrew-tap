class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.4/openci-worker-0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "9229451d5ebf83c6bc4255a520b3bce29b2c88054f84d0dc8e239aaf320afc58"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
