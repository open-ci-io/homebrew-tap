class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.8.2/openci-worker-v0.8.2-darwin-arm64.tar.gz"
      sha256 "3f0a8c2a4f30538c22b4bcb0d4260c7193a35fc0c62d0b212fe1a6aa70135289"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
