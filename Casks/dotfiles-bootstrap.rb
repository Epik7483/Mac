cask 'dotfiles-bootstrap' do
  version :latest
  sha256 :no_check

  url 'https://raw.githubusercontent.com/githubutilities/dotfiles-bootstrap/master/Contents.zip'
  name 'dotfiles-bootstrap'
  homepage 'https://github.com/githubutilities/dotfiles-bootstrap'
  license :unknown

  installer :script => {
              :executable => 'Contents/bootstrap.sh',
              :sudo => false
            }
end
