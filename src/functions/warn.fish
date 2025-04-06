function fimake_warn
    set_color yellow
    echo "[WARNING]: $argv" >&2
    set_color normal
end
