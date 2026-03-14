class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.2/openci-worker-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "fa3c3b8451b2fca79317669a7ec7f14f716b882ac282605042b410c0cd84b985"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
