require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.18.tar.gz"
  sha256 "2675176d23506a0c990ba4e30672e1275f88e6328ed23d9a37de3b29a35a136a"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.18"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end