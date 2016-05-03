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
	set_color normal
	echo -n ' λ '
end

# Add aliases
source ~/.aliases

# Setup GOPATH and add GOBIN to PATH
export GOPATH=/home/tom/go
export GOBIN=$GOPATH/bin
set PATH $GOBIN $PATH
