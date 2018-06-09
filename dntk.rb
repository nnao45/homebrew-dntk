require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v1.0.7.tar.gz"
  sha256 "2fad6150f148fad7f631bfbb9cfaa670fc90cfa5c7cb445ebee181a20ed215ae"
  head "https://github.com/nnao45/dntk.git"
  version "v1.0.7"

  depends_on "go" => :build
  
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
