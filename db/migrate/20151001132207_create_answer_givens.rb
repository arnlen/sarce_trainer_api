class CreateAnswerGivens < ActiveRecord::Migration
  def change
    create_table :answer_givens do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :answer
      t.boolean :is_correct

      t.timestamps
    end
  end
end
