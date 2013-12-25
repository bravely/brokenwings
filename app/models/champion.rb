class Champion < ActiveRecord::Base
  validates :name, presence: true

  BOOLEAN_COLUMNS = %w{
    active
    free_to_play
    ranked_play_enabled
    bot_enabled
    bot_mm_enabled
  }

  INTEGER_COLUMNS = %w{
    difficulty_rank
    attack_rank
    defense_rank
    magic_rank
  }

  INTEGER_COLUMNS.each do |column|
    validates column, numericality: { only_integer: true, allow_nil: true, allow_blank: true }
  end
end
