class AddOrderSetToVisaType < ActiveRecord::Migration
  def change
    add_column :visa_types, :order_set, :integer, default: 0
  end
end
