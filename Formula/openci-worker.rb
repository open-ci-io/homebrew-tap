class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.1.0/openci-worker-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "78130d5133f49caaef84e84206940cdc37774d9b598e809b7b685444204d51f4"
    else
      url "https://github.com/open-ci-io/openci/releases/download/v0.1.0/openci-worker-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "YOUR_SHA256_HERE"
    end
  end

  on_linux do
    url "https://github.com/open-ci-io/openci/releases/download/v0.1.0/openci-worker-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "YOUR_SHA256_HERE"
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
