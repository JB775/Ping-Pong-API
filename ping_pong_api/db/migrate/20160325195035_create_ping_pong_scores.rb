class CreatePingPongScores < ActiveRecord::Migration
  def change
    create_table :ping_pong_scores do |t|
      t.string :email
      t.integer :high_score

      t.timestamps null: false
    end
  end
end
