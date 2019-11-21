# capture screen cast

function screencast() {

	NOW=$(date '+%Y-%m-%d__%H.%M.%S')
	DEFAULT_DIRECTORY="/tmp"
	DEFAULT_FILENAME="__screenrecording__$NOW.mkv"

	echo "Create screencast from input screen... please wait..."
	echo "...................................................."
	echo "\n  Usage:\n\n   $0 :screen_id\n"

	if [ $# -eq  0 ]; then
		echo "  [ERROR] Required input screen device"
	else
		DEST_SCREEN_FILE="$DEFAULT_DIRECTORY/$DEFAULT_FILENAME"

		echo "[IMPORTANT]\nscreen recording will be saved at $DEST_SCREEN_FILE"
		echo "             press [q] to stop recording"

		ffmpeg -loglevel 24 -r 24 -f avfoundation \
			-capture_cursor 1 \
			-capture_mouse_clicks 1  \
			-framerate ntsc -i $1 $DEST_SCREEN_FILE
	fi
}
