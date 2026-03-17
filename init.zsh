# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::greenhouse::deps()
#
#>
######################################################################
p6df::modules::greenhouse::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: str str = p6df::modules::greenhouse::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 P6_DFZ_PROFILE_GREENHOUSE GREENHOUSE_API_KEY
#>
######################################################################
p6df::modules::greenhouse::prompt::mod() {

  local str
  if p6_string_blank_NOT "$P6_DFZ_PROFILE_GREENHOUSE"; then
    if p6_string_blank_NOT "$GREENHOUSE_API_KEY"; then
      str="greenhouse:\t  $P6_DFZ_PROFILE_GREENHOUSE:"
      str=$(p6_string_append "$str" "api" " ")
    fi
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::greenhouse::profile::on(profile, api_key)
#
#  Args:
#	profile -
#	api_key -
#
#  Environment:	 P6_DFZ_PROFILE_GREENHOUSE GREENHOUSE_API_KEY
#>
######################################################################
p6df::modules::greenhouse::profile::on() {
  local profile="$1"
  local api_key="$2"

  p6_env_export "P6_DFZ_PROFILE_GREENHOUSE" "$profile"
  p6_env_export "GREENHOUSE_API_KEY" "$api_key"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::greenhouse::profile::off()
#
#  Environment:	 P6_DFZ_PROFILE_GREENHOUSE GREENHOUSE_API_KEY
#>
######################################################################
p6df::modules::greenhouse::profile::off() {

  p6_env_export_un P6_DFZ_PROFILE_GREENHOUSE
  p6_env_export_un GREENHOUSE_API_KEY

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::greenhouse::mcp()
#
#>
######################################################################
p6df::modules::greenhouse::mcp() {

  p6_js_npm_global_install "greenhouse-mcp"

  p6_return_void
}
