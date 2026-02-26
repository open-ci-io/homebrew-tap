class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.11/openci-worker-0.4.11-aarch64-apple-darwin.tar.gz"
      sha256 "c020690cbf139d4644c6d6edfd6edee3b525291be2d0500df8d5e4617223ecb6"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
