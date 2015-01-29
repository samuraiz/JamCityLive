class Contestant < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
