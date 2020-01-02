ApiStruct::Settings.configure do |config|
  config.endpoints = {
    fatture_in_cloud: {
      root: 'https://api.fattureincloud.it/v1',
    }
  }
end