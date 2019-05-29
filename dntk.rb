require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.9.tar.gz"
  sha256 "f6e4fad0876c43367b5f0be8cf45940780b5ce86705fa428ea8ca32454d9f367"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.9"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
