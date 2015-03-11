class CreateNewsAndVents < ActiveRecord::Migration
  def change
    create_table :news_and_vents do |t|
      t.string :title_fa
      t.string :title_en
      t.string :title_ar
      t.text :text_fa
      t.text :text_en
      t.text :text_ar
      t.string :source

      t.timestamps
    end
  end
end
