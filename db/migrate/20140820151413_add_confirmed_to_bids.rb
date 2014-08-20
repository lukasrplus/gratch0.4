class AddConfirmedToBids < ActiveRecord::Migration
  def change
    add_column :bids, :confirmed, :boolean, default: false
  end
end
