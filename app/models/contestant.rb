class Contestant < ActiveRecord::Base
  has_many :votes
  has_many :users, through: :votes, class_name: 'User'
  mount_uploader :image, ImageUploader
  mount_uploader :image_b, ImageUploader
  mount_uploader :image_c, ImageUploader
  mount_uploader :image_d, ImageUploader
end
