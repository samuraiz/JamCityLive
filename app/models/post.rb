class Post < ActiveRecord::Base
  # attr_accessible :title, :content
  has_many :comments
  mount_uploader :image, ImageUploader

  def slug
    title.downcase.gsub(" ", "-")
  end

  def to_param
    "#{id}-#{slug}"
  end
end
