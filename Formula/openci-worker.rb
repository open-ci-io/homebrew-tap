class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.1/openci-worker-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "1fb1862a64f4144035564d67b33c09ac550f9a3707ccf67218ce5ba5cf487d5c"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
