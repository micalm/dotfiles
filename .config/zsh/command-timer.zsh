command_timer_start=
command_timer_display=

command_timer_preexec() {
  command_timer_start=$EPOCHSECONDS
}

command_timer_format() {
  local total_seconds=$1
  local minutes=$(( total_seconds / 60 ))
  local seconds=$(( total_seconds % 60 ))

  if (( minutes > 0 )); then
    printf '%dm%ds' "$minutes" "$seconds"
  else
    printf '%ds' "$seconds"
  fi
}

command_timer_precmd() {
  if [[ -n "$command_timer_start" ]]; then
    local elapsed=$(( EPOCHSECONDS - command_timer_start ))
    command_timer_start=

    local last_cmd="${history[$((HISTCMD - 1))]%% *}"
    if [[ "$last_cmd" != clear && "$elapsed" -gt 0 ]]; then
      command_timer_display="[$(command_timer_format "$elapsed")]"
    else
      command_timer_display=
    fi
  fi
}

command_timer_prompt() {
  [[ -n "$command_timer_display" ]] && printf ' %s' "$command_timer_display"
}
