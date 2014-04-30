class AddFirstLangLvlToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :first_lang_lvl, :integer
  end
end
