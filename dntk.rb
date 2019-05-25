require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.1.tar.gz"
  sha256 "eed55fe672e6917d0a7d78e33d76a92b1fa53d3d79b701a89f2944c4cfb62a3c"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.1"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end
end
