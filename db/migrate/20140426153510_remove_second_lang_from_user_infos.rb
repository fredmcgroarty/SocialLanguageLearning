class RemoveSecondLangFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :second_lang, :integer
  end
end
