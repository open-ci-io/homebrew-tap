class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.6.9-worker/openci-worker-0.6.9-macos-arm64.tar.gz"
      sha256 "77fd0f04f8721b6e3d206414d660def595dd8191a526e67d42cd8a620c9fca6f"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
