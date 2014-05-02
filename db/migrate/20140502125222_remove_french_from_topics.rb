class RemoveFrenchFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :french, :boolean
  end
end
