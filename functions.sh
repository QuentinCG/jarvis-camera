#!/usr/bin/env bash

# Take a picture
# $1 (string): Path
# $2 (bool): Silent ("True" for no Jarvis response, "False" for Jarvis response)
jv_pg_ca_take_picture()
{
  # Send request to take a picture
  avconv -f video4linux2 -s $var_jv_pg_ca_camera_resolution -i $var_jv_pg_ca_camera_input_filename -ss 0:0:$var_jv_pg_ca_stream_before_taking_picture -frames 1 $1

  # Finish here if need to say nothing
  if [[ ! $2 =~ "True" ]]; then
    return
  fi

  # Show the result to user
  if [[ $? -eq 0 ]]; then
      say "$(jv_pg_gt_lang take_picture_success)"
    else
      say "$(jv_pg_gt_lang take_picture_failed)"
  fi
}
