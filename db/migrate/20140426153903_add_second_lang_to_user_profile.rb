class AddSecondLangToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :second_lang, :string
  end
end
