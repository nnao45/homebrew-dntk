require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.4.tar.gz"
  sha256 "6c069a753b6247311088f63fe7d508de21aa0e388c865232b93097b5fed3bfc3"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.4"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
