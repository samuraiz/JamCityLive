class Contestant < ActiveRecord::Base
  has_many :votes
  has_many :users, through: :votes, class_name: 'User'
  mount_uploader :image, ImageUploader
end
