class Remove < ActiveRecord::Migration
  def change
    remove_column :gratches, :bro1_id
    remove_column :gratches, :bro2_id
    remove_column :gratches, :bro3_id
    remove_column :gratches, :bro4_id
  end
end
