class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.9.2/openci-worker-v0.9.2-darwin-arm64.tar.gz"
      sha256 "89d9599662560dd1a105f7fe2cbaef2be1fcd97070f1338e472e6980e663e1b3"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
