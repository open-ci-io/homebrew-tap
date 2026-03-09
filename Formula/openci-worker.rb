class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.1/openci-worker-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "3b924acae7536d6ffd115873062afe8a96e6b6161dfc63ff3425d14b4a27cf63"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
