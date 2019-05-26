require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.0.3.tar.gz"
  sha256 "a26b588cc8cf8f88cd7c0c15ffed889c3fcc5f0e14cbe6443d98ea70e5ac928f"
  head "https://github.com/nnao45/dntk.git"
  version "v2.0.3"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
