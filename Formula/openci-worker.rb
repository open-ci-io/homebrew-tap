class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.0/openci-worker-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "5e0cd6374aad14ed0aa2f511dfe8ece75611f643a47c826588067e10aafac0a5"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
