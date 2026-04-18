class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.9.4"
  url "https://github.com/open-ci-io/openci/releases/download/v0.9.4/openci-worker-v0.9.4-darwin-arm64.tar.gz"
  sha256 "9a254e1fc8f8b61163fa4570c6b978838b7f6668683711e5d434ebec40a4a800"

  depends_on arch: :arm64

  def install
    bin.install "openci-worker"
  end

  service do
    run [opt_bin/"openci-worker"]
    keep_alive true
  end
end
