class AddEnglishToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :english, :boolean
  end
end
