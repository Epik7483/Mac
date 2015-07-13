cask :v1 => 'miwifi' do
  version :latest
  sha256 :no_check

  url 'https://raw.githubusercontent.com/githubutilities/MiWifiMac/brew-cask/pkgs/rt2870resources.pkg.zip'
  name 'miwifi'
  name 'MiWifi'
  homepage 'http://www.mi.com/miniwifi/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'rt2870resources.pkg'

  caveats do
    reboot
  end

  uninstall :pkgutil => 'com.Ralink.RT2870.pkg'
end
