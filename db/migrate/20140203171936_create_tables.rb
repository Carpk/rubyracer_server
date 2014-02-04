class CreateTables < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, :unique => true, :null => false
      t.timestamps
    end

    create_table :games do |t|
      t.string :winning_time
    end

    create_table :rounds, id: false do |t|
      t.boolean :winner, default: :false
      t.integer :player_id
      t.integer :game_id
    end
  end
end
