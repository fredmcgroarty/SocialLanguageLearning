class AddLang1ToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lang1, :string
  end
end
