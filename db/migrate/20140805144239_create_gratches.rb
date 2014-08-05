class CreateGratches < ActiveRecord::Migration
  def change
    create_table :gratches do |t|
      t.integer :host_id
      t.integer :bro1_id
      t.integer :bro2_id
      t.integer :bro3_id
      t.integer :bro4_id
      t.datetime :datetime
      t.string :city
      t.string :adress
      t.integer :zipcode

      t.timestamps
    end
  end
end
