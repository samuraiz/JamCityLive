class Gallery < ActiveRecord::Base
  has_many :photos
  # mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :photos, allow_destroy: true
end
