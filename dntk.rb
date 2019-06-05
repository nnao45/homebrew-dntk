require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.12.tar.gz"
  sha256 "96059e57be9cb0225b0b4c70c8ebb73bc5a36837f9414e12fbeb1923cdfbe8b8"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.12"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
