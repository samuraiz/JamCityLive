class AddYoutubeIdToTvs < ActiveRecord::Migration
  def change
    add_column :tvs, :youtube_id, :string
    remove_column :tvs, :video, :string
  end
end
