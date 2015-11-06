class AddAttachmentPictureToChickens < ActiveRecord::Migration
  def self.up
    change_table :chickens do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :chickens, :picture
  end
end
