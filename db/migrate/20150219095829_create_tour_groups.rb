class CreateTourGroups < ActiveRecord::Migration
  def change
    create_table :tour_groups do |t|
      t.string :title_fa
      t.string :title_en
      t.string :title_ar
      t.integer :set_order,         default: 0

      t.timestamps
    end
  end
end
