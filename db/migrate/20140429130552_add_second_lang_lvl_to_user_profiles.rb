class AddSecondLangLvlToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :second_lang_lvl, :integer
  end
end
