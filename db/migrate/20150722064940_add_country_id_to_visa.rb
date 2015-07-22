class AddCountryIdToVisa < ActiveRecord::Migration
  def change
    add_column :visas, :country_id, :integer
  end
end
