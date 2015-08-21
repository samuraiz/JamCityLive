class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :galleries, :date, :string
  end
end
