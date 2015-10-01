class GivenAnswerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :question_id, :answer, :is_correct
end
