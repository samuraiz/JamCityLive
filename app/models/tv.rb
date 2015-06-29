class Tv < ActiveRecord::Base
  mount_uploader :video, VideoUploader

  def slug
    title.downcase.gsub(" ", "-")
  end

  def to_param
    "#{id}-#{slug}"
  end
end
