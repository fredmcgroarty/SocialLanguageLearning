class RemovePicUrlFromUserProfiles < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :pic_url, :string
  end
end
