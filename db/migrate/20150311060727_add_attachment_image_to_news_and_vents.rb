class AddAttachmentImageToNewsAndVents < ActiveRecord::Migration
  def self.up
    change_table :news_and_vents do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :news_and_vents, :image
  end
end
