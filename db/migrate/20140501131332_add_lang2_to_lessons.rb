class AddLang2ToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lang2, :string
  end
end
