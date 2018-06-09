require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v1.0.6.tar.gz"
  sha256 "99fb8ce015e889c38db8ca2a8d4474a7e326b1d80e587a5c0e033afbf3d2e413"
  head "https://github.com/nnao45/dntk.git"
  version "v1.0.6"

  depends_on "go" => :build
  depends_on "glide" => :build
  
  def install
    ENV["GOPATH"] = buildpath
    ENV["DEP_HOME"] = HOMEBREW_CACHE/"dep_home/#{name}"
    (buildpath/"src/github.com/nnao45/dntk").install buildpath.children
    cd "src/github.com/nnao45/dntk" do
      system "make", "dep-install"
      system "make", "deps"
      system "make"
      bin.install "bin/dntk"
      system "make", "clean"
    end
  end
end
