class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.15/openci-worker-v0.7.15-darwin-arm64.tar.gz"
      sha256 "56d65192603ba81fc303c58a371c6261a55449eb1f2a6bff8e07dcd015e60cf3"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
