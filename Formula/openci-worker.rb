class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-cli-v0.7.1/openci-worker-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "36b6d61a59411b39356e4751a0e161f2f9c274671beab69cd0464e8e31741d61"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
