class Question < ActiveRecord::Base
  validates :body, :answers, :correct_answers, :explanation, :repository_id, presence: true
end
