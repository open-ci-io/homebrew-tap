class OpenciWorker < Formula
  desc "OpenCI Worker CLI"
  homepage "https://github.com/open-ci-io/openci"
<<<<<<< HEAD
  version "0.5.0"
=======
  version "0.6.0"
>>>>>>> bd52e5c (Update openci-worker to v0.6.0 (tart → lume migration))
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
<<<<<<< HEAD
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.5.0/openci-worker-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "eec71294e194f92e0b069ad728c48b6edbe3d013217e9ef30aedc05e530acc76"
=======
      url "https://github.com/open-ci-io/openci/releases/download/openci-worker-v0.6.0/openci-worker-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "0469986c30d8195b6a0c483dd0e24e227dcdb8df96dcdb2d28d4ed290a8e5a46"
>>>>>>> bd52e5c (Update openci-worker to v0.6.0 (tart → lume migration))
    end
  end

  def install
    bin.install "openci-worker"
  end

  test do
    system "#{bin}/openci-worker", "--version"
  end
end
