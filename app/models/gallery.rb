class Gallery < ActiveRecord::Base
  has_many :photos
  # mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :photos, allow_destroy: true

  def slug
    title.downcase.gsub(" ", "-")
  end

  def to_param
    "#{id}-#{slug}"
  end

end
