class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.4.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.4.13/openci-worker-0.4.13-aarch64-apple-darwin.tar.gz"
      sha256 "1ec562341683b4971392429f96e54b66a18ab58c607645b65ee7838c2f0a76cd"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
