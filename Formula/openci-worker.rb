class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.14/openci-worker-0.4.14-aarch64-apple-darwin.tar.gz"
      sha256 "0cd2c4bd9eac22a328eb683431e80ec7b688c0ffa75246969a15c4969c6bf1ba"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
