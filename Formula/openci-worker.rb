class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.7/openci-worker-0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "cffa81ed83cfdd276fd15c7cf57c37133babec5ad108f901e535b5535bd6fdbc"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
