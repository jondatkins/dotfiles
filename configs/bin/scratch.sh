if [ -z "$DISPLAY" ]; then
	echo copy: supported only in the Desktop version
fi

if [ "$XDG_SESSION_TYPE" = wayland ]; then
	command -v wl-copy >/dev/null || echo 'DEPENDENCY: please install "wl-copy" for "copy"' >&2
else
	command -v xsel >/dev/null || echo 'DEPENDENCY: please install "xsel" for "copy"' >&2
fi

if [ -z "$DISPLAY" ]; then
	echo copy: supported only in the Desktop version
fi
echo 'test'
