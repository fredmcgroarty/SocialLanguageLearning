class RemoveSecondLangLvlFromUserProfiles < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :second_lang_lvl, :integer
  end
end
