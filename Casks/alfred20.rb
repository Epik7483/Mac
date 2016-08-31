cask 'alfred20' do
  version '2.0'
  sha256 '90d1ffe8604dcb154b07d9e4933b8383160769b1e4e71785857227ce216530ad'

  url "https://raw.githubusercontent.com/githubutilities/macBinary/master/Binary/Alfred/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :commercial

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
