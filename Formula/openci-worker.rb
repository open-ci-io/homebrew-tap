class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.12/openci-worker-v0.7.12-darwin-arm64.tar.gz"
      sha256 "23d61f5acbc15082ec74dda62ddac3e009892d204501ca8daf9d383c3ca8f11d"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
