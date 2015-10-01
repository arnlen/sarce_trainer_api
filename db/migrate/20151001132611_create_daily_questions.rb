class CreateDailyQuestions < ActiveRecord::Migration
  def change
    create_table :daily_questions do |t|
      t.integer :question_id
      t.integer :answer_counter

      t.timestamps
    end
  end
end
