require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.14.tar.gz"
  sha256 "d953d57e9ca4123a69f4e2a0a9628a1a67389d4b56c9b16a01c5a0be0c8632f8"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.14"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
