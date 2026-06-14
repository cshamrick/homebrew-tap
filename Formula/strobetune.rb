class Strobetune < Formula
  desc "Analog-style strobe tuner for guitar, in the terminal"
  homepage "https://github.com/cshamrick/strobetune"
  version "0.2.1"
  license "MIT"

  on_arm do
    url "https://github.com/cshamrick/strobetune/releases/download/v0.2.1/strobetune-v0.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "1dc6c81f6161c3e4bbee037d2abc65bebffcfe578ca90303d04370ac099726e0"
  end

  on_intel do
    url "https://github.com/cshamrick/strobetune/releases/download/v0.2.1/strobetune-v0.2.1-x86_64-apple-darwin.tar.gz"
    sha256 "573c0b0ecfa56671e5b43579550cb733de0ad01bf2bf0214884a8fd7245da3ec"
  end

  def install
    bin.install "strobetune"
  end

  test do
    assert_match "strobetune", shell_output("#{bin}/strobetune --version")
  end
end
