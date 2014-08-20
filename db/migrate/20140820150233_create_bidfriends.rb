class CreateBidfriends < ActiveRecord::Migration
  def change
    create_table :bidfriends do |t|
      t.integer :bid_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
