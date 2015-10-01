class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.text :answers, array: true, default: []
      t.text :correct_answers, array: true, default: []
      t.text :explanation
      t.integer :repository_id, index: true

      t.timestamps
    end
  end
end
