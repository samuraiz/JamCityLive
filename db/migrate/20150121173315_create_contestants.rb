class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name
      t.text :bio
      t.string :nickname
      t.string :image

      t.timestamps
    end
  end
end
