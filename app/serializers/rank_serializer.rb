class RankSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_name, :image_url
end
