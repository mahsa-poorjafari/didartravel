class AddAttachmentImageToDirivingLicenses < ActiveRecord::Migration
  def self.up
    change_table :diriving_licenses do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :diriving_licenses, :image
  end
end
