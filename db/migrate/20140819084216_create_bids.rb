class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :gratch_id
      t.integer :applicant_id
      t.integer :number_of_friends

      t.timestamps
    end
  end
end
