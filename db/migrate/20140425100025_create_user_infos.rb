class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.integer :native_lang
      t.integer :first_lang
      t.integer :second_lang
      t.integer :third_lang
      t.integer :first_lang_lvl
      t.integer :second_lang_lvl
      t.integer :third_lang_lvl
      t.integer :exp_pts
      
      t.timestamps
    end
  end
end
