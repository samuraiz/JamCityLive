class ContestantComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :contestant
end
