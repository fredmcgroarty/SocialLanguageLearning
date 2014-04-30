class AddNativeLangLvlToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :native_lang_lvl, :integer
  end
end
