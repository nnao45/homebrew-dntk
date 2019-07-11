require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.17.tar.gz"
  sha256 "6b4a83147d84c44ce2e3489366da23edaff8778bbd4127e239be44fb5fb5b4af"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.17"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
