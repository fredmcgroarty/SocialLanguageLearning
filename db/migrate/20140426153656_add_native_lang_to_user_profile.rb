class AddNativeLangToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :native_lang, :string
  end
end
