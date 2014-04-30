class ChangeLanguageType < ActiveRecord::Migration
  def change
    change_column :user_profiles, :native_lang, :string
    change_column :user_profiles, :first_lang, :string
    change_column :user_profiles, :second_lang, :string
  end
end
