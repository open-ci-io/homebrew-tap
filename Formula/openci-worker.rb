class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.13/openci-worker-v0.7.13-darwin-arm64.tar.gz"
      sha256 "7132c9e22afc59d335618dd98ed64cc89d3fdecd66cd88e9272f50f55c833474"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
