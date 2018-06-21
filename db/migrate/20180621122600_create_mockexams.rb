class CreateMockexams < ActiveRecord::Migration[5.1]
  def change
    create_table :mockexams do |t|
      t.string :name
      t.integer :level_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
