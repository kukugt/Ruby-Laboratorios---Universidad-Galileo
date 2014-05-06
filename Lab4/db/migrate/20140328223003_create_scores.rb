class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :match_id
      t.integer :team_id
      t.integer :gol

      t.timestamps
    end
  end
end
