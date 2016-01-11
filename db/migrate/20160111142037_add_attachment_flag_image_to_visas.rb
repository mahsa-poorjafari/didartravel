class AddAttachmentFlagImageToVisas < ActiveRecord::Migration
  def self.up
    change_table :visas do |t|
      t.attachment :flag_image
    end
  end

  def self.down
    remove_attachment :visas, :flag_image
  end
end
