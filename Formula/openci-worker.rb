class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.0/openci-worker-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "0469986c30d8195b6a0c483dd0e24e227dcdb8df96dcdb2d28d4ed290a8e5a46"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
