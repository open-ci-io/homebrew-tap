class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.3/openci-worker-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "ea1d53f5f17a04c6171db71d71abcbde3ba2fae46216410d4f4147875d776612"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
