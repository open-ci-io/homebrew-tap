class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.13/openci-worker-v0.7.13-darwin-arm64.tar.gz"
      sha256 "81b9ea8205b438434026948bf4967fc23966f4c4f37a7321176650209cf36f6e"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
