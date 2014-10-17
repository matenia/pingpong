class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :created_at,
             :image_url,
             :name,
             :updated_at
end
