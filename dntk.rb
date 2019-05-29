require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.1.tar.gz"
  sha256 "e4365816890e4ba8d7eb40a5694e7f6f8b84692b6e126a3cddf31a248c8edcd8"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.1"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
