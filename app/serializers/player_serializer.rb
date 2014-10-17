class PlayerSerializer < ActiveModel::Serializer
  attributes :score,
             :user,
             :winner

  belongs_to :user, serializer: UserSerializer

  def winner
    object.winner?
  end
end
