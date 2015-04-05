class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.string :father_job
      t.date :birthdate
      t.string :id_code
      t.string :source_place
      t.boolean :marriage_status,    default: false
      t.text :education
      t.text :address
      t.string :phonenumber
      t.string :mobile
      t.date :ex_job_start_date
      t.date :ex_job_ended_date
      t.string :ex_job_carrer
      t.text :ex_job_address
      t.string :ex_job_phone
      t.text :left_ex_job_reason
      t.text :any_course
      t.integer :your_En_level
      t.string :tender_task
      t.text :choose_job_reason
      t.text :Your_abilities
      t.string :salary_amount
      t.string :first_reagent_fullname
      t.string :fg_job
      t.string :fg_phone
      t.text :fg_address
      t.string :Second_reagent_fullname
      t.string :sg_job
      t.string :sg_phone
      t.text :sg_address
      t.boolean :full_time
      t.boolean :put_guaranty

      t.timestamps
    end
  end
end
