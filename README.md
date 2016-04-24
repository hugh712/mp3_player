Via Buildroot, you can build your own mp3 player.

##Branch

There are two branches:

No\_Lcd\_Version

master

"no-lcd-version" can play music but no gpio output,

"master" branch can output the name of the song which is playing.

##Detail

I'm writing all the detail about this mp3 in my blog,
when I finished, I will release it, only chinese version,
if there is someone need Eng. version, just let me know.

##Build

only thing you have to do is:

''' cd mp3\_player
 
 make'''


##Image to SDCard

The result is a image file, assume your sdcard path is "/dev/sdd", only thing you have to do is:

 '''sudo dd if=/dev/sdcard.img of=/dev/sdd'''

## Power On

When you power on your pi2 with a speaker coneected on it,
then plug in your USB stick with mp3 in it, your pi2 will play songs soon.

	
