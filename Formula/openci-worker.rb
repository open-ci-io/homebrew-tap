class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.9.3/openci-worker-v0.9.3-darwin-arm64.tar.gz"
      sha256 "ad15860cb7a78f09fd2b6b0848e0c87fd71725623c460392e839f8f8c1e403e4"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
