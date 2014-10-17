class GameSerializer < ActiveModel::Serializer
  attributes :id,
             :created_at,
             :updated_at

  has_many :players
end
