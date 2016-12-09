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

# go typos
function go
	if [ (count $argv) -eq 1 -a (contains $argv[1] "isntall" "istnall" "intsall"; echo $status) -eq 0 ]
		echo "running 'go install' instead"
		command go install
	else
		command go $argv
	end
end

# Add /usr/local/bin to PATH
set PATH $PATH "/usr/local/bin"

# Setup GOPATH and add GOBIN to PATH
export GOPATH=/Users/tom/go
export GOBIN=$GOPATH/bin
set PATH $PATH $GOBIN
