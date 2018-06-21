class CreateMockQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :mock_questions do |t|
      t.string :content
      t.integer :mock_exam_id

      t.timestamps
    end
  end
end
