class RemoveLanguagesMatchIndexFromUserProfiles < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :native_lang_match_index
    remove_column :user_profiles, :first_lang_match_index
    remove_column :user_profiles, :second_lang_match_index
  end
end
