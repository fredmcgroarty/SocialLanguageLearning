class RemoveEnglishFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :english, :boolean
  end
end
