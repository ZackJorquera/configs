set D "/mnt/c/Users/jorqu/Documents"

# set -x DISPLAY 192.168.0.21:0
set -x DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
set -x EDITOR nvim
set -x CARGO_INCREMENTAL 1
set -x RUST_BACKTRACE 1

abbr -a cdwd "cd /mnt/c/Users/jorqu/Documents"
abbr -a cdod "cd /mnt/c/Users/jorqu/OneDrive\ -\ UCB-O365/"

set PATH $HOME/.cargo/bin $PATH

abbr -a c cargo

if command -v nvim > /dev/null
    abbr -a vim 'nvim'
end

if command -v exa > /dev/null
    abbr -a l 'exa'
    abbr -a ls 'exa'
    abbr -a ll 'exa -l'
    abbr -a lll 'exa -la'
else
    abbr -a l 'ls'
    abbr -a ll 'ls -l'
    abbr -a lll 'ls -la'
end

if command -v bat > /dev/null
    abbr -a cat 'bat'
end

