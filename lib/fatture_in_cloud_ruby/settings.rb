module FattureInCloudRuby
  class Settings
    extend Dry::Configurable

    setting :api_key
    setting :api_uid
  end
end