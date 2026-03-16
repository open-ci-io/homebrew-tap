class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.10/openci-worker-v0.7.10-darwin-arm64.tar.gz"
      sha256 "579bd8780a22b29f0a65343d246481f4e4096cabe35cf5ac4fa646c84b5f217b"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
