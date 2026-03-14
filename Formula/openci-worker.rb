class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.6/openci-worker-0.7.6-aarch64-apple-darwin.tar.gz"
      sha256 "c6a3175c45b99b08b15e2000a20fee4742f0214d86d6b99b8bd02cc658f2d5de"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
