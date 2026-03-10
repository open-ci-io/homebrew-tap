class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.5/openci-worker-0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "f71a6fde4e562e8aa8680f430664accdfbbc3e964a012bb398beecd837665e5a"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
