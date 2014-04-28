class AddFrenchToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :french, :boolean
  end
end
