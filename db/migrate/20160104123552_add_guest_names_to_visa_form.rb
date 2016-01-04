class AddGuestNamesToVisaForm < ActiveRecord::Migration
  def change
    add_column :visa_forms, :guest_names, :text
  end
end
