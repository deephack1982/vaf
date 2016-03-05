class AddAttachmentImageToAirframeTypes < ActiveRecord::Migration
  def self.up
    change_table :airframe_types do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :airframe_types, :image
  end
end
