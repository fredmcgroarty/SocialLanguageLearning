class RemoveSpanishFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :spanish, :boolean
  end
end
