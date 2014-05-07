class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.references :for_user, index: true
      t.text :rev1
      t.text :rev2
      t.integer :score
      t.belongs_to :topic
      t.boolean :completed

      t.timestamps
    end
  end
end
