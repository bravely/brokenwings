class ChampionSerializer < ActiveModel::Serializer
  attributes :id, :name, :free_to_play, :difficulty_rank, :attack_rank, :defense_rank, :magic_rank
end
