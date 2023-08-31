require 'formula'

class Marteau < Formula
  homepage 'https://github.com/Indexing-Your-Heart/marteau'
  version '0.1.0-alpha4'
  url 'https://github.com/Indexing-Your-Heart/marteau/archive/0.2.0-alpha1.tar.gz'
  sha256 'efcfa705933d3d9af35703203e65205c5aa410f0812eed041161c6095d70132d'

  head 'https://github.com/Indexing-Your-Heart/marteau.git'

  depends_on :xcode => :build
  depends_on :macos => :monterey

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/marteau'
  end
end

