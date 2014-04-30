class CreateLessonTexts < ActiveRecord::Migration
  def change
    create_table :lesson_texts do |t|

      t.timestamps
    end
  end
end
