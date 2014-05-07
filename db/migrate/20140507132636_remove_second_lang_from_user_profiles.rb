class RemoveSecondLangFromUserProfiles < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :second_lang, :string
  end
end
