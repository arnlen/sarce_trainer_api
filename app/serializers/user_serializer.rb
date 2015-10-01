class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :rank_id, :cis, :email
end
