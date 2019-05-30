require "formula"

class Dntk < Formula
  desc "Command line's multi-platform interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v2.1.5.tar.gz"
  sha256 "8772f5cdc26a3e9b91422a0ce1c66e45aae750161b67d8d75e5bbdb8f7dcd356"
  head "https://github.com/nnao45/dntk.git"
  version "v2.1.5"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dntk" => "dntk"
  end

  test do
    system "dntk", "--version"
  end
end
