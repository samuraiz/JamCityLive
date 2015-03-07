class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :contestant, index: true

      t.timestamps
    end
  end
end
