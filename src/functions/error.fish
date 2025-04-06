function fimake_error
	set_color red
	echo "[ERROR]: $argv[1]" >&2
	set_color normal
	return $argv[2]
end
