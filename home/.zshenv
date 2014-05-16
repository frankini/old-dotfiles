if [ -n "$DESKTOP_SESSION" ];then
  eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
  export GNOME_KEYRING_CONTROL GPG_AGENT_INFO SSH_AUTH_SOCK
fi
