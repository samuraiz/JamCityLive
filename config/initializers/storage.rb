CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     "AKIAJ5CSME4SXJ2OSQVQ",                       # required
      aws_secret_access_key: "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"                       # required
  }
  config.fog_directory  = "andela-ratsi"
  config.fog_public     = false                                        # optional, defaults to true
end