class Strobetune < Formula
  desc "Analog-style strobe tuner for the terminal"
  homepage "https://github.com/cshamrick/strobetune"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/cshamrick/strobetune/releases/download/v0.1.0/strobetune-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "d18b0a647e3e658b13157cdf5faf00faeea219aa38f574230520ed3cc3f2c826"
  end

  on_intel do
    url "https://github.com/cshamrick/strobetune/releases/download/v0.1.0/strobetune-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "95c490af1b0219c049713e7ec6cb7210d60b01628189266dd797b6b5d33e1e0b"
  end

  def install
    bin.install "strobetune"
  end

  test do
    assert_path_exists bin/"strobetune"
  end
end
