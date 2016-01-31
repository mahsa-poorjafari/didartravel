class AddAttachmentPassportCopyToPassengers < ActiveRecord::Migration
  def self.up
    change_table :passengers do |t|
      t.attachment :passport_copy
    end
  end

  def self.down
    remove_attachment :passengers, :passport_copy
  end
end
