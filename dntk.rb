require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.16.tar.gz"
  sha256 "5d16b86b0b9c13e48cbd2792f94ac01cd257340845a3a96c6f3a31eea6e0b90a"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.16"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
