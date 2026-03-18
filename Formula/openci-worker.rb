class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.14/openci-worker-v0.7.14-darwin-arm64.tar.gz"
      sha256 "eb99cbabe67b3917fbd2065fe85f40445ff02d285b705e18c83ba9999ddab1b3"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
