class AddBioToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :bio, :text
  end
end
