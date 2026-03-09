class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.3/openci-worker-0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "c1baec7709cc80cd34b72c0307fd73670f158627a441676cc2d016460e9b629e"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
