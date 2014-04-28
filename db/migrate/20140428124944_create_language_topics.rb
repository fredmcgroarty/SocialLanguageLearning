class CreateLanguageTopics < ActiveRecord::Migration
  def change
    create_table :languages_topics do |t|
      t.integer :topic_id
      t.integer :language_id

      t.timestamps
    end
  end
end
