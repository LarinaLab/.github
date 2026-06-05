# For all files in the current directory with the .mov extension, convert them to .gif format using ffmpeg.
for file in *.mov; do
    # Extract the base name of the file (without the extension).
    base_name="${file%.mov}"
    # Pull fps from .mov file
    fps=$(ffmpeg -i "$file" 2>&1 | grep -oP '(\d+(\.\d+)?) fps' | awk '{print $1}')
    # Use ffmpeg to convert the .mov file to .gif format.
    /usr/local/bin/ffmpeg -i "$file" -vf "fps=${fps},scale=900:-1:flags=lanczos" -c:v gif "../gif/${base_name}.gif"
done
