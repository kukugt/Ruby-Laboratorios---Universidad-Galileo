class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :fecha
      t.integer :phase_id
      t.integer :state
      t.integer :team_id
      t.integer :team_id
      t.integer :score_id
      t.integer :group_id
      t.integer :stadium_id

      t.timestamps
    end
  end
end
