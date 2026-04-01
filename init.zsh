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
# Function: p6df::modules::greenhouse::mcp()
#
#>
######################################################################
p6df::modules::greenhouse::mcp() {

  p6_js_npm_global_install "greenhouse-mcp"

  p6df::modules::anthropic::mcp::server::add "greenhouse" "npx" "-y" "greenhouse-mcp"
  p6df::modules::openai::mcp::server::add "greenhouse" "npx" "-y" "greenhouse-mcp"

  p6_return_void
}

######################################################################
#<
#
# Function: words greenhouse $GREENHOUSE_API_KEY = p6df::modules::greenhouse::profile::mod()
#
#  Returns:
#	words - greenhouse $GREENHOUSE_API_KEY
#
#  Environment:	 GREENHOUSE_API_KEY
#>
######################################################################
p6df::modules::greenhouse::profile::mod() {

  p6_return_words 'greenhouse' "$"
}
