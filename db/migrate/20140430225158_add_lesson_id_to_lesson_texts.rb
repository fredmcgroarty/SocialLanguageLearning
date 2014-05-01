class AddLessonIdToLessonTexts < ActiveRecord::Migration
  def change
    add_column :lesson_texts, :lesson_id, :integer
  end
end
