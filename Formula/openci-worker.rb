class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.9.5"
  url "https://github.com/open-ci-io/openci/releases/download/v0.9.5/openci-worker-v0.9.5-darwin-arm64.tar.gz"
  sha256 "a5be264cefa1c6aa9ec87c106e8dcf8be92e27a99168ced0fef0be581fe0f215"

  depends_on arch: :arm64

  def install
    bin.install "openci-worker"
  end

  service do
    run [opt_bin/"openci-worker"]
    keep_alive true
  end
end
