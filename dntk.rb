require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.9.tar.gz"
  sha256 "14cb4b44e73d74a5859d3f75f12a89c4dbcda4c58a8a835ac774c4ba2f493597"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.9"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
