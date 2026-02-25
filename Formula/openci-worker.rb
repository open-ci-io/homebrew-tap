class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.2.0/openci-worker-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7eeb1a848a12e9c84a10bfba6be497511090ca9a84b48226c132038576ed612b"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
