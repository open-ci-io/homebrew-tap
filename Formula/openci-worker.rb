class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.4.0/openci-worker-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6dd3024ff43e0a726981676437540fd0a9cf9b776563da7e1522193fc976227a"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
