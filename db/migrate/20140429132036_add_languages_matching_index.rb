class AddLanguagesMatchingIndex < ActiveRecord::Migration
  def change
    add_column :user_profiles, :native_lang_match_index, :integer
    add_column :user_profiles, :first_lang_match_index, :integer
    add_column :user_profiles, :second_lang_match_index, :integer
  end
end
