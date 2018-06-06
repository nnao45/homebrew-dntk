require "formula"

class Pexpo < Formula
  desc "Terminal sending ping tool written in Go."
  homepage "https://github.com/nnao45/dntk"
  url "https://github.com/nnao45/pexpo/archive/v1.0.5.tar.gz"
  sha256 "890f4cd3c04e5271b844f153874872916207cd377ccf7c69de4b83fcaef8b29d"
  head "https://github.com/nnao45/dntk.git"
  version "v1.0.5"

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
