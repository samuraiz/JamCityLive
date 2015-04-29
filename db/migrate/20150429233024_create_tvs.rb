class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.text :title
      t.string :video

      t.timestamps
    end
  end
end
