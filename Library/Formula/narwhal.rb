require 'formula'

class Narwhal <Formula
  head 'git://github.com/tlrobinson/narwhal.git'
  homepage 'http://www.narwhaljs.org/'

  def install
    prefix.install Dir['*']
  end
end
