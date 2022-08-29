#!/bin/sh

cmdOut=$(gradle dependencies --configuration compileClasspath | grep com.rishabh)
for dependency in $cmdOut
do
	if [[ "$dependency" == *"com.rishabh"* ]]; then
		proj=""
		branch=""
		IFS=':'
		read -ra arr <<< "$dependency"
		i=0
		for val in "${arr[@]}";
		do
			case "$i" in
				1)
				proj="$val"
				;;
				2)
				branch="$val"
				;;
			esac
			((i=i+1))
		done
		echo "git clone -b $branch http://github.com/Rishabh-mathe/$proj ../"
	fi
done
