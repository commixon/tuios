log_cmd() {
  "$@" > >(tee -a "$TUIOS_LOG_PATH") 2> >(tee -a "$TUIOS_LOG_PATH" >&2)
  local status=$?
  return $status
}
