class CreateContestantComments < ActiveRecord::Migration
  def change
    create_table :contestant_comments do |t|
      t.references :user, index: true
      t.references :contestant, index: true
      t.text :content

      t.timestamps
    end
  end
end
