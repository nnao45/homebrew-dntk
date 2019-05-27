require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.7.tar.gz"
  sha256 "483c6f23ce00bd42fb668035404c48cb003947ed745b6c1c4af5c7c14b795bff"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.7"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
