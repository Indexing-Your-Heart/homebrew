require 'formula'

class Marteau < Formula
  homepage 'https://github.com/Indexing-Your-Heart/marteau'
  version '0.1.0-alpha3'
  url 'https://github.com/Indexing-Your-Heart/marteau/archive/0.1.0-alpha3.tar.gz'
  sha256 'fae26178f382d882457a7af16924e9bcb25a60d4b2a869204205ee0cb69e8167'

  head 'https://github.com/Indexing-Your-Heart/marteau.git'

  depends_on :xcode => :build
  depends_on :macos => :monterey

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/marteau'
  end
end

