require 'formula'

class Marteau < Formula
  homepage 'https://github.com/Indexing-Your-Heart/marteau'
  version '0.1.0-alpha2'
  url 'https://github.com/Indexing-Your-Heart/marteau/archive/0.1.0-alpha2.tar.gz'
  sha256 'e507122acbc9b83e1c4254e65ec1340d2f268c62f94db25411f9a7cb8a634f31'

  head 'https://github.com/Indexing-Your-Heart/marteau.git'

  depends_on :xcode => :build
  depends_on :macos => :monterey

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/marteau'
  end
end

