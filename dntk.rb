require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.2.1.tar.gz"
  sha256 "cada719876bcf53c9630f7022fb19049ecf9ab7f57a0d1dc0759a51553c8859d"
  head "https://github.com/nnao45/dntk.git"
  version "v2.2.1"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end