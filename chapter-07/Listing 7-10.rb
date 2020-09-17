# File: features/support/env.rb
#
APPLICATION_ROOT_PATH = File.join(File.expand_path('..', __FILE__), '..', '..')

$LOAD_PATH.unshift(APPLICATION_ROOT_PATH)

require 'all'
