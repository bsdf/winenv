#compdef winenv

_winenv() {
    local completions

    if [ "${#words}" -eq 2 ]; then
        completions="version versions prefix local global winetricks rehash overlay info"
    else
        completions="$(winenv completions ${words[2,-2]})"
    fi

    if [ -z $completions ]; then
        _files
    else
        _arguments "*: :( ${completions} )"
    fi
}

compdef _winenv winenv
