require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.3.tar.gz"
  sha256 "b5fdcb847125bd85cae3070b9ef1abe429b69d1d6a6e01d37e3350d8cb94d706"
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
