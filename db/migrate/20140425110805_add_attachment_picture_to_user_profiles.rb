class AddAttachmentPictureToUserProfiles < ActiveRecord::Migration
  def self.up
    change_table :user_profiles do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :user_profiles, :picture
  end
end
