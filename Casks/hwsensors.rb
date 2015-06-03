cask :v1 => 'hwsensors' do
  version 'v6.14'
  sha256 'dd0088eef634310af15df15d752a489b572949180acb70cdc41482895edee0c8'

  url "https://raw.githubusercontent.com/githubutilities/HWSensors-pkg/master/pkgs/HWSensors-#{version}.pkg.tar.gz"
  name 'hwsensors'
  homepage 'http://hwsensors.com/'
  license :gpl

  pkg 'HWSensors-v6.14.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'org.kozlek.hwsensors'

  caveats do
    reboot
  end
end
