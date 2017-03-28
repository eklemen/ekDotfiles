if [[ `uname` == 'Darwin' ]]; then
  which -s brew
  if [[ $? != 0 ]]; then
    echo 'Installing Homebrew...'
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      brew update
      brew install git tree fasd yarn mysql nginx node ruby
  fi

  echo 'Tweaking OS X...'
    source 'osx.sh'

  # http://github.com/sindresorhus/quick-look-plugins
  echo 'Installing brew cask plugins...'
    brew tap phinze/homebrew-cask
    brew tap homebrew/php
    brew install caskroom/cask/brew-cask
    brew cask install google-chrome slack tmux the_silver_searcher qlcolorcode qlstephen qlmarkdown quicklook-json quicklook-csv
    brew install php71 --with-apache
fi
