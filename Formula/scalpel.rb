class Scalpel < Formula
  homepage "https://github.com/sleuthkit/scalpel"
  url "https://github.com/githubutilities/scalpel/archive/v2.0.1.tar.gz"
  sha256 "9ea8e55391d2ef44f4c44fd6721b282d62039f1a5ed96f94fcd01c69ad8ea0a9"

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'tre'

  def install
    system "./bootstrap"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
    etc.install "scalpel.conf" => "scalpel.conf.sample"
  end

end
