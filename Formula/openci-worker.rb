class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
  version "0.7.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-ci-io/openci/releases/download/v0.7.13/openci-worker-v0.7.13-darwin-arm64.tar.gz"
      sha256 "1e5b0bafe7029ad144674e190e60c92d0d2ddb4189093489c99f29990dffd631"
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
