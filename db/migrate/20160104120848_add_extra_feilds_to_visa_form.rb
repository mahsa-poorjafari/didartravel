class AddExtraFeildsToVisaForm < ActiveRecord::Migration
  def change
    add_column :visa_forms, :einjaneb_form, :string
    add_column :visa_forms, :commitment_full_name, :string
    add_column :visa_forms, :commitment_gender, :string
    add_column :visa_forms, :commitment_father_name, :string
    add_column :visa_forms, :commitment_id_shenasname, :string
    add_column :visa_forms, :commitment_residence_add, :string
  end
end

