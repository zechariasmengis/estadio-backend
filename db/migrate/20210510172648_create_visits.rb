class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :stadium_id
      t.string :team_1
      t.string :team_2
      t.date :date
      t.string :competition
      t.integer :team_1_score
      t.integer :team_2_score
      t.string :sport

      t.timestamps
    end
  end
end
