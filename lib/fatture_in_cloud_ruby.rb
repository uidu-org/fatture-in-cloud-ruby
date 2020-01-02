require 'api_struct'
require 'dry-configurable'

# require 'fatture_in_cloud_ruby/settings'
require 'fatture_in_cloud_ruby/api_struct_settings'

require "fatture_in_cloud_ruby/version"
require "fatture_in_cloud_ruby/clients/corrispettivi"

module FattureInCloudRuby
  extend Dry::Configurable

  class Error < StandardError; end
  # Your code goes here...
end
