class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :repository_id, :answers, :correct_answers
end
