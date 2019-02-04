cask 'alfred27' do
  version '2.7.2_407'
  sha256 '303f4a0f7965d20e8ca86408f120c3dc01fcd13f5379aab2f4d7ef4e3f8d07a9'

  url "https://raw.githubusercontent.com/githubutilities/macBinary/master/Binary/Alfred/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end

  uninstall :quit => 'com.runningwithcrayons.Alfred-2'

  zap :delete => [
                  '~/Library/Application Support/Alfred 2',
                  '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                  '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                  '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                  '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                  '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState'
                 ]
end
