class AddExtraFieldsToPassenger < ActiveRecord::Migration
  def change
    add_column :passengers, :relationship, :string
    add_column :passengers, :travel_before, :text
    add_column :passengers, :Address_phone_Guest_accommodations, :text
    add_column :passengers, :obtain_visa_place, :string
  end
end
