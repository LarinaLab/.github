# Use ffmpeg to crop WangJBIO2016-2016.mov to get rid of background
# The crop filter takes the following parameters: width, height, x, and y.
# In this case, we want to crop the video to a width of 900 pixels and a height of 900 pixels, starting from the top-left corner (x=0, y=0).
/usr/local/bin/ffmpeg -i ScullyBOR2025-Control\ vs\ cKO_3.mp4 -vf "crop=iw/2-10:ih-80:5:100" -c:v libx264 -crf 23 -preset veryslow ScullyBOR2025-Control.mp4