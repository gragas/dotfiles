# Fix fish in Emacs term
function fish_title
	true
end

# Remove greeting
set fish_greeting

# Change prompt
function fish_prompt
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	echo -n " >>= "
	set_color normal	
end

# Add aliases
source ~/.aliases

# Add /usr/local/bin to PATH
set PATH $PATH "/usr/local/bin"

# Setup GOPATH and add GOBIN to PATH
export GOPATH=/home/tom/go
export GOBIN=$GOPATH/bin
set PATH $PATH $GOBIN

# Setup RUBYBIN and add it to PATH
export RUBYBIN=/home/tom/.gem/ruby/2.3.0/bin
set PATH $PATH $RUBYBIN
