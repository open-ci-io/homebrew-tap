class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.8/openci-worker-0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "77e0deaaddd53933c4f2302c797a18a735603b1028abe35ebfbd6ca87cf37a86"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
