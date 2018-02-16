class AddAttachmentFileToAttacheds < ActiveRecord::Migration[5.1]
  def self.up
    change_table :attacheds do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :attacheds, :file
  end
end
