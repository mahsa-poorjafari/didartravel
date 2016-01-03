class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :last_name
      t.string :father_name
      t.string :id_shenasname
      t.string :id_nationality_card
      t.date :birth_date
      t.string :birth_place
      t.string :job
      t.text :residence_address
      t.string :residence_phone
      t.text :work_address
      t.string :work_phone

      t.timestamps
    end
  end
end
