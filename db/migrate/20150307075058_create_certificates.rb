class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :title_fa
      t.string :title_en
      t.string :title_ar

      t.timestamps
    end
  end
end
