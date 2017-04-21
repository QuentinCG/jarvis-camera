#!/usr/bin/env bash

# Take a picture
# $1 (string): Storage path
# $2 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_ca_take_picture()
{
  # Send request to take a picture
  avconv -f video4linux2 -s $var_jv_pg_ca_camera_resolution -i $var_jv_pg_ca_camera_video_input_filename -ss $var_jv_pg_ca_stream_before_taking_picture -frames 1 -y $1

  # Show the result to user (if requested)
  if [[ $? -eq 0 ]]; then
    if [[ ! $2 =~ "True" ]]; then
      say "$(jv_pg_ca_lang take_picture_success)"
    fi
    return 0
  else
    if [[ ! $2 =~ "True" ]]; then
      say "$(jv_pg_ca_lang take_picture_failed)"
    fi
  fi

  return 1
}

# Take a video
# $1 (string): Storage path
# $2 (int): Video time
# $3 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_ca_take_video()
{
  # Send request to take a video
  avconv -f video4linux2 -i $var_jv_pg_ca_camera_video_input_filename -f alsa -i plughw:$var_jv_pg_ca_camera_audio_input_filename -strict experimental -ss $var_jv_pg_ca_stream_before_taking_video -t $2 -vcodec mpeg4 -y $1

  # Show the result to user (if requested)
  if [[ $? -eq 0 ]]; then
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_ca_lang take_video_success)"
    fi
    return 0
  else
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_ca_lang take_video_failed)"
    fi
  fi

  return 1
}
