class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.19/openci-worker-v0.7.19-darwin-arm64.tar.gz"
      sha256 "842b862c4634a35cbe05a2f4001bec0bb1ad68796e5ad385ea62ccb0f8731f4f"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
