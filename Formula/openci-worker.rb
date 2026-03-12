class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.9/openci-worker-0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "a73fde67f7815acc110ca04cab468a88f5f0ef2dac58d59fbfc9cf9bfe44207b"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
