class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.16/openci-worker-v0.7.16-darwin-arm64.tar.gz"
      sha256 "eaa63764db7026cbc38e6c0b04be190aef9acec799ef508c07a5e8cf545db7f0"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
