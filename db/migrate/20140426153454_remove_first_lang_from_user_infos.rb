class RemoveFirstLangFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :first_lang, :integer
  end
end
