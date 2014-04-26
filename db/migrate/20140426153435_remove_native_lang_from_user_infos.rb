class RemoveNativeLangFromUserInfos < ActiveRecord::Migration
  def change
    remove_column :user_infos, :native_lang, :integer
  end
end
