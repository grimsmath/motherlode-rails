class AddAddressToNugget < ActiveRecord::Migration
  def change
    add_column :nuggets, :address, :string
    add_column :nuggets, :latitude, :float
    add_column :nuggets, :longitude, :float
  end
end
