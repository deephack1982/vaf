class AddAttachmentProfilePicToPilots < ActiveRecord::Migration
  def self.up
    change_table :pilots do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :pilots, :profile_pic
  end
end
