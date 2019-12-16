require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.2.0.tar.gz"
  sha256 "1189ace68cfd5655309f861f6f34f87bdbc5103560f2786215ec5ddcbb0cbb1f"
  head "https://github.com/nnao45/dntk.git"
  version "v2.2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end