class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :media_url

      t.timestamps
    end
  end
end
