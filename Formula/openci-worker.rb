class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.7/openci-worker-0.7.7-aarch64-apple-darwin.tar.gz"
      sha256 "0cdbd6fb8864bead08d0f74ff457f042c6df2606dc4ddff64d17f6bc1d2285a2"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
