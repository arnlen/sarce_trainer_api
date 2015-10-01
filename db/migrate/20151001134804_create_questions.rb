class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.text :answers
      t.text :correct_answers
      t.text :explanation
      t.integer :repository_id

      t.timestamps
    end
  end
end
