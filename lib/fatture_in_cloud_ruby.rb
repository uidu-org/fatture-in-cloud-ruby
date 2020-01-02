# frozen_string_literal: true

require 'api_struct'
require 'dry-configurable'

require_relative 'fatture_in_cloud_ruby/version'
require_relative 'fatture_in_cloud_ruby/settings'
require_relative 'fatture_in_cloud_ruby/api_struct_settings'
require_relative 'fatture_in_cloud_ruby/clients/corrispettivi'
require_relative 'fatture_in_cloud_ruby/corrispettivi'

module FattureInCloudRuby
  class Error < StandardError; end
end
