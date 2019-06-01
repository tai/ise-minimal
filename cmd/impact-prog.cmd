setmode -bs
setcable -p usb21
identify -inferir
assignFile -p 1 -file blink.bit
program -p 1
exit
