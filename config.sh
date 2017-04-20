# Video and photo config
var_jv_pg_ca_camera_resolution="640x480" # Camera resolution
var_jv_pg_ca_camera_video_input_filename="/dev/video0" # Camera 'path' (use "ls /dev/video*" command to find your camera video output)

# Photo config
var_jv_pg_ca_stream_before_taking_picture=1 # Before taking a picture, stream to stabilize the camera (in sec)

# Video config
var_jv_pg_ca_camera_audio_input_filename="CAMERA,0" # Audio camera 'path' (use "arecord -l" command to find the camera audio output: 'name,number')
var_jv_pg_ca_stream_before_taking_video=1 # Before taking a video, stream to stabilize the camera (in sec)