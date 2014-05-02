class RemoveEnglishFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :English, :boolean
  end
end
