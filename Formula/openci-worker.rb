class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.8.3/openci-worker-v0.8.3-darwin-arm64.tar.gz"
      sha256 "1313a724f311396ce8e3b21b8b7f590c9f90b5194cb267e78f3007ce31ae003c"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
