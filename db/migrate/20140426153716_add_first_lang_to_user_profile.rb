class AddFirstLangToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :first_lang, :string
  end
end
