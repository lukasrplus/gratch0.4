class CreateBidFriends < ActiveRecord::Migration
  def change
    create_table :bid_friends do |t|
      t.string :bid_id
      t.string :friend_id

      t.timestamps
    end
  end
end
