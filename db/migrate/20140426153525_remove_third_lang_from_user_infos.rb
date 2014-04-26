class RemoveThirdLangFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :third_lang, :integer
  end
end
