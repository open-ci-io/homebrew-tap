class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.5/openci-worker-0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "b3045d69272f22f3d99de7758c8c7d8b6282529147c8dd71e54cb6943a9d5b6d"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
