class AddSpanishToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :spanish, :boolean
  end
end
