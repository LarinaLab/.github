# Use ffmpeg to crop WangJBIO2016-2016.mov to get rid of background
# The crop filter takes the following parameters: width, height, x, and y.
# In this case, we want to crop the video to a width of 900 pixels and a height of 900 pixels, starting from the top-left corner (x=0, y=0).
/usr/local/bin/ffmpeg -i WangJBIO2016-Movie1.mov -vf "crop=920:1000:(iw-920)/2-10:(ih-1000)/2" -c:v libx264 -crf 23 -preset veryslow WangJBIO2016-2016-cropped.mov