require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.0.tar.gz"
  sha256 "7d61997c0d08d198318aa113defad3fdcb124c7b50cd4a7a472c20ea7ce01642"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
