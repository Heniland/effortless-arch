#!/usr/bin/zsh

function run {
	if ! pgrep -f $1; then
		$@ &
	fi
}

run picom --config $HOME/.config/picom/picom.conf
run $HOME/.config/polybar/launch.sh
