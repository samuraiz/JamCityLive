CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV["AWS_ACCESS_ID"],                       # required
      aws_secret_access_key: ENV["AWS_ACCESS_SECRET_KEY"]                       # required
  }
  config.fog_directory  = "andela-ratsi"
  config.fog_public     = false                                        # optional, defaults to true
end