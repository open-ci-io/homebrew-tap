class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.6/openci-worker-0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "c48098c941f594bf1b474cdcbacc82052976993b62e6eb687ddc7a9a2126a9c3"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
