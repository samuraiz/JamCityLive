CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AWS_ACCESS_ID"],
      aws_secret_access_key: ENV["AWS_ACCESS_SECRET_KEY"],
      region: 'us-west-2'
  }
  config.fog_directory  = "jamcity"
  config.fog_public     = false
end