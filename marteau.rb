require 'formula'

class Marteau < Formula
  homepage 'https://github.com/Indexing-Your-Heart/marteau'
  version '0.1.0-alpha4'
  url 'https://github.com/Indexing-Your-Heart/marteau/archive/0.1.0-alpha4.tar.gz'
  sha256 'f4d174bddf1df9537a8254908f30eb8dbb5a9098194c5d6b7d9f4753d6952e99'

  head 'https://github.com/Indexing-Your-Heart/marteau.git'

  depends_on :xcode => :build
  depends_on :macos => :monterey

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/marteau'
  end
end

