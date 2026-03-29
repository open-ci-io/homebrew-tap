class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.17/openci-worker-v0.7.17-darwin-arm64.tar.gz"
      sha256 "b1e62f0a793b7b1ee668b75a1ddfd575f0cc136eb48cfde035dc07edb9a1adaa"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
