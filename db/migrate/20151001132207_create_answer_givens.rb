class CreateAnswerGivens < ActiveRecord::Migration
  def change
    create_table :answer_givens do |t|
      t.integer :user_id, index: true
      t.integer :question_id, index: true
      t.string :answer
      t.boolean :is_correct

      t.timestamps
    end
  end
end
