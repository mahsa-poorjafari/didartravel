class AddEmailToEmployment < ActiveRecord::Migration
  def change
    add_column :employments, :email, :string
  end
end
