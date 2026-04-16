class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.9.1/openci-worker-v0.9.1-darwin-arm64.tar.gz"
      sha256 "90664e07b04433434ccd52481328b37d6e4d827cd0059d5cf9e67f22a7bd112e"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
