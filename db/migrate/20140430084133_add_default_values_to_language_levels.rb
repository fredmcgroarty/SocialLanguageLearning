class AddDefaultValuesToLanguageLevels < ActiveRecord::Migration
  def change
    change_column_default :user_profiles, :first_lang_lvl, 1
    change_column_default :user_profiles, :second_lang_lvl, 1
  end
end
