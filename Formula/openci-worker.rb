class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.9/openci-worker-0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "3627b72d393088a8073e48af91e523929c529b3a64d00674ed644636d79f0616"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
