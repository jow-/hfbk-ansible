#!/usr/bin/env bash

while [ -n "$1" ]; do
	case "$1" in
		--list)
			devices=""
			shift

			for host in hosts/*; do
				devices="${devices:+$devices, }\"${host##*/}\""
			done

			echo "{ \"enrolled-devices\": [ $devices ] }"
		;;
		--host)
			hostname="$2"
			shift; shift

			. "hosts/$hostname"

			cat <<-EOT
				{
					"mac": "$mac",
					"ipv4": "$ipv4",
					"ipv6ll": "$ipv6ll"
				}
			EOT
		;;
		*)
			shift
		;;
	esac
done
