#!/bin/sh

#if [ $1 == "" ]
#then

if [ $1 == "" ]
then
	ver = "master"
else
	ver = $1
fi

if [ -d "vnfsui" ]
then
	echo "Directory vnfsui exist"
else
	echo "Directory vnfsui does not exist"
	echo "Do you want to clone the directory from git?(y/n)"
	read ans
	if [ $ans == "y" ]
	then
		echo "Cloning directory vnfsui"
		git clone -b $ver --single-branch https://github.com/vehere-ccu/vnfsui.git vnfsui
	fi
fi


if [ -d "vnsfui-plugins" ]
then
	echo "Directory vnsfiui-plugins exist"
else
	echo "Directory vnfsui-plugins does not exist"
	echo "Do you want to clone the directory from git?(y/n)"
	read ans2
	if [ $ans2 == "y" ]
	then
		echo "Cloning directory vnfsui-plugins"
		git clone -b $ver --single-branch https://github.com/vehere-ccu/vnfsui-plugins.git vnfsui-plugins
	fi
fi

#cd vnfsui
