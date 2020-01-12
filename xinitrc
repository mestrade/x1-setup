export PATH=$PATH:/usr/local/Postman/
export GOROOT=/usr/local/go

export GPG_TTY="$(tty)"

eval `gpg-agent --daemon ` 
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye &>/dev/null

exec i3
exec volumeicon
