class AddLocationToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :location, :string
  end
end
