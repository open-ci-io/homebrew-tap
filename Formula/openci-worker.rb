class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.12/openci-worker-0.4.12-aarch64-apple-darwin.tar.gz"
      sha256 "fb68c4bbe93e4a22ca6f6349437d66a9b0d703febcd102889f8f512cc9141dfc"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
