require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.5.tar.gz"
  sha256 "4754019790b62a9d375f1e166b8472accce204eba6047c8b77f6ffede7bb96f4"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.5"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
