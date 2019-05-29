require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.2.tar.gz"
  sha256 "e8d3e45198864cb8b0debe0433c1a6988791ed3ff376afae9a2ff0300fa5eb8c"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
