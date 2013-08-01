class CreateGameStats < ActiveRecord::Migration
  def change
    create_table :game_stats do |t|
      t.string :result

      t.timestamps
    end
  end
end
