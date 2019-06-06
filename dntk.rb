require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.15.tar.gz"
  sha256 "404374e7d2a9475098307185ba819fad8b958e631d7eeb677024f2095c8c0242"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.15"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
