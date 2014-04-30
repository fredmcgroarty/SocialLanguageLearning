class DeleteNativeLvl < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :native_lang_lvl
  end
end
