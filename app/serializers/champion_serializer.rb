class ChampionSerializer < ActiveModel::Serializer
  attributes :id, :name, :free_to_play, :value, :tokens

  def value
    object.name
  end

  def tokens
    [object.name]
  end
end
