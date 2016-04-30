# Fix fish in Emacs term
function fish_title
  true
end

# Add aliases
source ~/.aliases

# Setup GOPATH and add GOBIN to PATH
export GOPATH=/home/tom/go
export GOBIN=$GOPATH/bin
set PATH $GOBIN $PATH
