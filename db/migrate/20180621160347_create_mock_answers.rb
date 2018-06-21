class CreateMockAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :mock_answers do |t|
      t.string :content
      t.integer :mock_question_id

      t.timestamps
    end
  end
end
