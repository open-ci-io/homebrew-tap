class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.2/openci-worker-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "cb45babb6831bbbfdb8ddde4e1fd9d5502d6f4588ea79e9f17016a3bdb3f5865"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
