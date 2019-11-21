# ffmpeg-function-aliases

FFMPEG aliases for editing & capturing screen

```bash

 _______              ______________
|       |            |              |
| input |  demuxer   | encoded data |   decoder
| file  | ---------> | packets      | -----+
|_______|            |______________|      |
                                           v
                                       _________
                                      |         |
                                      | decoded |
                                      | frames  |
                                      |_________|
 ________             ______________       |
|        |           |              |      |
| output | <-------- | encoded data | <----+
| file   |   muxer   | packets      |   encoder
|________|           |______________|
```

### screencast.sh

grabs your screen into video file

```bash

# step 1: source screencast.sh file 

$ source ./screencast.sh

# step 2: screencast function become available and ready to use

$ screencast

# Create screencast from input screen... please wait...
# ....................................................
#
#  Usage:
#
#   screencast :screen_id
```
