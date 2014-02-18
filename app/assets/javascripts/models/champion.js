Brokenwings.Champion = DS.Model.extend({
  name: DS.attr('string'),
  active: DS.attr('boolean'),
  free_to_play: DS.attr('boolean'),
  ranked_play_enabled: DS.attr('boolean'),
  bot_enabled: DS.attr('boolean'),
  bot_mm_enabled: DS.attr('boolean'),
  difficulty_rank: DS.attr('number'),
  attack_rank: DS.attr('number'),
  defense_rank: DS.attr('number'),
  magic_rank: DS.attr('number')
});