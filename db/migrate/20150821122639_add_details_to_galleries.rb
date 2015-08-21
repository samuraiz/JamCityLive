class AddDetailsToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :description, :string
    add_column :galleries, :date, :datetime
  end
end
