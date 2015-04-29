class Tv < ActiveRecord::Base
  mount_uploader :video, VideoUploader
end
