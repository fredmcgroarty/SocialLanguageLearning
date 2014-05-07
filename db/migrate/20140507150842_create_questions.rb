class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.references :topic, index: true

      t.timestamps
    end
  end
end
