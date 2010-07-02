require 'formula'

class Mdf2iso <Formula
  url 'http://download.berlios.de/mdf2iso/mdf2iso-0.3.0-src.tar.gz'
  homepage 'http://developer.berlios.de/project/showfiles.php?group_id=2545'
  md5 'db0b95e6ca68bf565cdc8d075922635e'

# depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
