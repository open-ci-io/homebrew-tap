class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.7.0/openci-worker-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f7016ad5ccb46804425283dbfc6f6f7b83f0c57f3decb5c14bbe0caa60ed2860"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
