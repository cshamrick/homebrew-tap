class Strobetune < Formula
  desc "Analog-style strobe tuner for guitar, in the terminal"
  homepage "https://github.com/cshamrick/strobetune"
  version "0.2.0"
  license "MIT"

  on_arm do
    url "https://github.com/cshamrick/strobetune/releases/download/v0.2.0/strobetune-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "fcf90aff9b251281ae40607504c8d87301dcaa4467ec2f86c26a8b97285353b1"
  end

  on_intel do
    url "https://github.com/cshamrick/strobetune/releases/download/v0.2.0/strobetune-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "1da4e1d0478e835a6c68d35134d59c8ceb7a75f0d352e5c07f296b3b1564a7e3"
  end

  def install
    bin.install "strobetune"
  end

  test do
    assert_match "strobetune", shell_output("#{bin}/strobetune --version")
  end
end
