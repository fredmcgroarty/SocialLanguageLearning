class AddAboutMeToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :about_me, :string
  end
end
