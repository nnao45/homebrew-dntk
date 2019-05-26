require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.6.tar.gz"
  sha256 "26e918cf481cbbdcb1b5a90bdd96a671496f460c109dc95306c460dd1a023916"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.6"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
