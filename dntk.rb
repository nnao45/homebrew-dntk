require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.8.tar.gz"
  sha256 "1333c219d9fea2553a1cc4129287356c0bab4497def17491dc25c7a2d6b94ef4"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.8"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
