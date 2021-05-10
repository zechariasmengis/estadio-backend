class CreateStadia < ActiveRecord::Migration[6.1]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :image
      t.string :address
      t.string :city
      t.string :country
      t.string :home_team
      t.string :primary_sport
      t.string :primary_competition
      t.integer :capacity

      t.timestamps
    end
  end
end
