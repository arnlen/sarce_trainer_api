class DailyQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :answer_counter
end
