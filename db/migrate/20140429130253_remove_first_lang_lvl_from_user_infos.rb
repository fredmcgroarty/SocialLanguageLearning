class RemoveFirstLangLvlFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :first_lang_lvl, :integer
  end
end
