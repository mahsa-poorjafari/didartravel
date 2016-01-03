class AddVisaFromIdToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :visa_form_id, :integer
  end
end
