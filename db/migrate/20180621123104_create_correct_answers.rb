class CreateCorrectAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :correct_answers do |t|
      t.integer :question_id
      t.string :body

      t.timestamps
    end
  end
end
