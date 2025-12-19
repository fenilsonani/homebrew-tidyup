class Tidyup < Formula
  desc "Fast system cleanup tool with intelligent caching"
  homepage "https://github.com/fenilsonani/cleanup-cache"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/fenilsonani/cleanup-cache/releases/download/v0.5.1/tidyup-darwin-amd64.tar.gz"
      sha256 "48f9e85075cdd4768687c26a51c8d667bb1b09a10de52c528a50709eae1cf649"
    end
    on_arm do
      url "https://github.com/fenilsonani/cleanup-cache/releases/download/v0.5.1/tidyup-darwin-arm64.tar.gz"
      sha256 "3d3e2519602c5d53bec7c114dab6c92d9d689652d126a3ce76333ae976d529fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fenilsonani/cleanup-cache/releases/download/v0.5.1/tidyup-linux-amd64.tar.gz"
      sha256 "4636cce7696004432cea07cb045e5d489b891e97f22638d3c7a52ff7d0df919e"
    end
  end

  def install
    bin.install "tidyup"
  end

  test do
    system "#{bin}/tidyup", "--version"
  end
end
