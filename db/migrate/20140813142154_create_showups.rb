class CreateShowups < ActiveRecord::Migration
  def change
    create_table :showups do |t|
      t.integer :gratch_id
      t.integer :user_id

      t.timestamps
    end
  end
end
