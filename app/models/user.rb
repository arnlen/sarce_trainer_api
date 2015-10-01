class User < ActiveRecord::Base
  belongs_to :rank
  has_many :given_answers
end
