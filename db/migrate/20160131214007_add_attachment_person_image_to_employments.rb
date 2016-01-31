class AddAttachmentPersonImageToEmployments < ActiveRecord::Migration
  def self.up
    change_table :employments do |t|
      t.attachment :person_image
    end
  end

  def self.down
    remove_attachment :employments, :person_image
  end
end
