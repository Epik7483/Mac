class Switchsocks < Formula
  homepage "https://github.com/githubutilities/switchsocks"
  url "https://github.com/githubutilities/switchsocks/archive/v0.2.tar.gz"
  sha256 "865aece9b57da39d83889d8206bed1b690e21f3c375f51c9a9534be771cd1692"

  def install
    bin.install "./bin/switchsocks_helper.sh"
  end

  def caveats; <<-EOS.undent
    add this line to your .bash_profile:
      alias switchsocks='source switchsocks_helper.sh'
    EOS
  end

end
