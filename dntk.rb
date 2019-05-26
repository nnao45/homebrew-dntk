require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.4.tar.gz"
  sha256 "2fbb34181edb309e3a343857207de96afe47b12cfadd61200da131d497547c89"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.4"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
