class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :pic_url
      t.integer :gender
      
      t.timestamps
    end
  end
end
