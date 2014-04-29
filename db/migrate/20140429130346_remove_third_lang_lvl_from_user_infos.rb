class RemoveThirdLangLvlFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :third_lang_lvl, :integer
  end
end
