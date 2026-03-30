class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.20/openci-worker-v0.7.20-darwin-arm64.tar.gz"
      sha256 "7a1a786a2fc9c01871395e48520156b8a24d5065fe654134fd80150bd025bfac"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
