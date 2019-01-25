#!/bin/bash
# 
echo 'Updating homebrew...'
brew update       # update local base of available packages and versions
brew upgrade      # install new versions of outdated packages        
brew cleanup      # cache cleanup of unfinished downloads
# now diagnotics
brew doctor       # show problems
