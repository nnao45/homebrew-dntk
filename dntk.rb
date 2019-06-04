require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.10.tar.gz"
  sha256 "4eeed04163a647c4cfd891e9e2f474c94ad65d433677890c0da66c1720d8b08f"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.10"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
