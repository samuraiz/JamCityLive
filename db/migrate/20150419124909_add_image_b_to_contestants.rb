class AddImageBToContestants < ActiveRecord::Migration
  def change
    add_column :contestants, :image_b, :string
    add_column :contestants, :image_c, :string
    add_column :contestants, :image_d, :string
  end
end
