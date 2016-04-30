# Fix fish in Emacs term
function fish_title
  true
end

# Add aliases
source ~/.aliases

# Setup GOPATH and add GOBIN to PATH
export GOPATH=~/go/src
export GOBIN=~/go/bin
set PATH $GOBIN $PATH
