require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.2.tar.gz"
  sha256 "cf772d8d5325e478dc0a9b0a2c4b50f72243ac5a1c0c957bc7e32b5fb0268a55"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
