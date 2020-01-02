require 'api_struct'
require 'dry-configurable'

require_relative 'api_struct_settings'
require_relative "version"
require_relative "clients/corrispettivi"

module FattureInCloudRuby
  extend Dry::Configurable

  class Error < StandardError; end
  # Your code goes here...
end
