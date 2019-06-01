require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.8.tar.gz"
  sha256 "0ef622af579bf7ef064a8b39fe7de785b6c80a987339d048f8441a37b3b0be74"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.8"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
