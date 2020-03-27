# asset2wall.sh

copy images for Windows 10 lock screen to use as wallpaper.

## requirements

For this script to work, you need a Windows 10 WSL environment and have installed ImageMatick on that WSL.

If the Linux you ar using on WSL is Ubuntu, you can install ImageMagick with the following command.

`sudo apt install imagemagick`

## usage

When this shell script is executed on the shell in WSL, the image saved in the lock screen folder of Windows 10 at that time is copied under C:\var\lib\wall.

Change the destination folder name as you like.

