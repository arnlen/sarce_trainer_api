class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :repository_id
      t.text :answers
      t.text :correct_answers

      t.timestamps
    end
  end
end
