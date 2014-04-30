class ChangeLanguageTypeToInteger < ActiveRecord::Migration
  def change
    change_column :user_profiles, :native_lang, :integer
    change_column :user_profiles, :first_lang, :integer
    change_column :user_profiles, :second_lang, :integer
  end
end
