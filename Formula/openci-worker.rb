class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.5.0/openci-worker-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "eec71294e194f92e0b069ad728c48b6edbe3d013217e9ef30aedc05e530acc76"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
