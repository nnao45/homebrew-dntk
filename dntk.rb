require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.1.tar.gz"
  sha256 "5857ef8cb6945f85b334ff4cd3d52e5d34cee86bee44d836bc9379746cfef391"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.1"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end
end
