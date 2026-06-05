# Convert mp4 files to gif format using ffmpeg.
for file in *.mp4; do
    # Extract the base name of the file (without the extension).
    base_name="${file%.mp4}"
    # Pull fps from .mp4 file    
    fps=$(ffmpeg -i "$file" 2>&1 | grep -oP '(\d+(\.\d+)?) fps' | awk '{print $1}')
    # Use ffmpeg to convert the .mp4 file to .gif format.
    /usr/local/bin/ffmpeg -i "$file" -vf "fps=${fps},scale=900:-1:flags=lanczos" -c:v gif "../gif/${base_name}.gif"
done