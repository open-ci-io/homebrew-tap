class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.21/openci-worker-v0.7.21-darwin-arm64.tar.gz"
      sha256 "e97b155914a020a828af10785078d39d5d7607cf60348ff6068d3c8851301cbf"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
