class AddAttachmentBadgeToSquadrons < ActiveRecord::Migration
  def self.up
    change_table :squadrons do |t|
      t.attachment :badge
    end
  end

  def self.down
    remove_attachment :squadrons, :badge
  end
end
