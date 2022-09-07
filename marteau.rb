require 'formula'

class Marteau < Formula
  homepage 'https://github.com/Indexing-Your-Heart/marteau'
  url 'https://github.com/Indexing-Your-Heart/marteau/archive/0.1.0-alpha.tar.gz'
  sha256 'd76205235686c78bb5372f6da962e4fd9a775ac68089af88a17a04bbbc3ae889'

  head 'https://github.com/Indexing-Your-Heart/marteau.git'

  depends_on :xcode => :build
  depends_on :macos => :monterey

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/marteau'
  end
end

