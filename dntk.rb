require "formula"

class Dntk < Formula
  desc "Command line's Interactive calculator, GNU bc wrapper."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/dntk/archive/v1.0.12.tar.gz"
  sha256 "5857ef8cb6945f85b334ff4cd3d52e5d34cee86bee44d836bc9379746cfef391"
  head "https://github.com/nnao45/dntk.git"
  version "v1.0.12"

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
