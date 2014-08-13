class AddPartyTypeToGratches < ActiveRecord::Migration
  def change
    add_column :gratches, :party_type, :string
  end
end
