class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.3.0/openci-worker-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "70fd4ea57c028905a4907c42a1e43ad81920b90481c09c711ed3deab9d6b0155"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
