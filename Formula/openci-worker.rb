class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.9/openci-worker-0.7.9-aarch64-apple-darwin.tar.gz"
      sha256 "6de1fa0a81a8102150c59a0ea219ac154bcb749bc98d032068f376d9d8349f56"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
