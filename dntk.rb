require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.6.tar.gz"
  sha256 "7fb5c6cd3b117bb51c5cd519fbe0b8a440b2dd78b8368d7f165d0ca99af16a99"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.6"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
