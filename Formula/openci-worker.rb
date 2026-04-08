class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.8.4/openci-worker-v0.8.4-darwin-arm64.tar.gz"
      sha256 "81fe40a5b9405c5a9b8fde3950f689ab38c54087935293b979d21eecf77be048"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
