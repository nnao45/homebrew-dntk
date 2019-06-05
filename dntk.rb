require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.13.tar.gz"
  sha256 "b3b29d3f9e107db4d50968a2792b05d07a91a7e38c0913b91a873b176cc61d1f"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.13"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
