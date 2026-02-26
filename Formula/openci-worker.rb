class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.4/openci-worker-0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "f6c70edf2d229185e3483a8b6d52daa8a6f1f00146b64b995a607739fb12256c"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
