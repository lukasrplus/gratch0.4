class AddFbUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_url, :string
    add_column :users, :single, :boolean
    add_column :users, :dob, :date

  end
end
