class RemoveSecondLangLvlFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :second_lang_lvl, :integer
  end
end
