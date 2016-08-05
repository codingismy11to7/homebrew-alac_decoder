require 'formula'

class AlacDecoder < Formula
  homepage 'http://craz.net/programs/itunes/alac.html'
  url 'https://distfiles.macports.org/alac_decoder/alac_decoder-0.2.0.tgz'
  sha256 '7f8f978a5619e6dfa03dc140994fd7255008d788af848ba6acf9cfbaa3e4122f'

  def install
    system "make", "CFLAGS=#{ENV.cflags}", "CC=#{ENV.cc}"
    bin.install('alac')
  end
end
