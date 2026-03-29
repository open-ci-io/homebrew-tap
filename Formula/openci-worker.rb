class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.18/openci-worker-v0.7.18-darwin-arm64.tar.gz"
      sha256 "95406bfa87a746a0561150665831adcfa06418722388e35130b6ae6946e8f8e4"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
