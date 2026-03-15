class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.8/openci-worker-0.7.8-aarch64-apple-darwin.tar.gz"
      sha256 "566fda36c9be4aed9ee8a70c2fb31625f3d0c6feaaeecf39f7932c9f1f012499"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
