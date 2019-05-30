require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.3.tar.gz"
  sha256 "32941849f3bcb9bae22595c82e7b9153f21fc485438f84a3e8304c71d5acce25"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.3"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
