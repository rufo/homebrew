require 'formula'

class Cdrdao <Formula
  url 'http://downloads.sourceforge.net/project/cdrdao/cdrdao/1.2.3/cdrdao-1.2.3.tar.bz2'
  homepage 'http://cdrdao.sourceforge.net/'
  md5 '8d15ba6280bb7ba2f4d6be31d28b3c0c'

  def patches
    # fixes build problems under 10.6
    # see http://sourceforge.net/tracker/index.php?func=detail&aid=2981804&group_id=2171&atid=302171
    "http://sourceforge.net/tracker/download.php?group_id=2171&atid=302171&file_id=369387&aid=2981804"
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--mandir=#{man}"
    system "make install"
  end
end
