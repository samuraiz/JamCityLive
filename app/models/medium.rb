class Medium < ActiveRecord::Base
  mount_uploader :media_url, VideoUploader
end
