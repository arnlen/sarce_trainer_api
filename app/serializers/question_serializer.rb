class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :body, :answers, :correct_answers, :explanation, :repository_id
end
