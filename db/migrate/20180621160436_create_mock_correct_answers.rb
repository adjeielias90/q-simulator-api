class CreateMockCorrectAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :mock_correct_answers do |t|
      t.string :content
      t.integer :mock_answer_id

      t.timestamps
    end
  end
end
