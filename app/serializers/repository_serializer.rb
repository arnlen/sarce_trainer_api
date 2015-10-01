class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :name, :short_name, :download_url
end
