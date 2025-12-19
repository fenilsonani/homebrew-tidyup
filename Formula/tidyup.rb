class Tidyup < Formula
  desc "Fast system cleanup tool with intelligent caching"
  homepage "https://github.com/fenilsonani/cleanup-cache"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/fenilsonani/cleanup-cache/releases/download/v0.5.0/tidyup-darwin-amd64.tar.gz"
      sha256 "027945017a69b8df7d6768a409cbb29acd17d9b50c52186ce9c84268e4660b21"
    end
    on_arm do
      url "https://github.com/fenilsonani/cleanup-cache/releases/download/v0.5.0/tidyup-darwin-arm64.tar.gz"
      sha256 "04ca78e680654ecd1b9283bbad8e346e7bcc0e19b4add33bdd7fa9f28755d4f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fenilsonani/cleanup-cache/releases/download/v0.5.0/tidyup-linux-amd64.tar.gz"
      sha256 "185b42c401bf672ff4c0cf0e645458d7b5aee8dd030c4fe3241136884904022d"
    end
  end

  def install
    bin.install "tidyup"
  end

  test do
    system "#{bin}/tidyup", "--version"
  end
end
