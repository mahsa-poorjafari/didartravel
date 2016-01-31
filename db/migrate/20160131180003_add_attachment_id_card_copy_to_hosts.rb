class AddAttachmentIdCardCopyToHosts < ActiveRecord::Migration
  def self.up
    change_table :hosts do |t|
      t.attachment :id_card_copy
    end
  end

  def self.down
    remove_attachment :hosts, :id_card_copy
  end
end
