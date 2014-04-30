class AddUidToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :uid, :string
  end
end
