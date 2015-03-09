class AddAttachmentImageToCertificates < ActiveRecord::Migration
  def self.up
    change_table :certificates do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :certificates, :image
  end
end
