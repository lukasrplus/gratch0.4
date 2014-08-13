class AddOpenToGratches < ActiveRecord::Migration
  def change
    add_column :gratches, :open, :boolean
  end
end
