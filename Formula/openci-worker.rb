class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.4/openci-worker-0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "6faf6d9788832504814c83ca482b119812d1e4003a499b9cfb132e541063700d"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
