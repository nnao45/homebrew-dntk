require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.7.tar.gz"
  sha256 "385cdaed914d9e3c117c6368da2b278d4c9d7b17ea448ede0e2f2d9a4ce6d403"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.7"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
