class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.boolean :active
      t.boolean :free_to_play
      t.boolean :ranked_play_enabled
      t.boolean :bot_enabled
      t.boolean :bot_mm_enabled
      t.integer :difficulty_rank
      t.integer :attack_rank
      t.integer :defense_rank
      t.integer :magic_rank

      t.timestamps
    end
  end
end
