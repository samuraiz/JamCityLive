class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.references :comment, index: true
      t.string :pic_art

      t.timestamps
    end
  end
end
