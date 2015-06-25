class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :posts, :pic_art, :image
  end
end
