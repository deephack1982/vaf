class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :title
      t.date :date
      t.time :start_time
      t.text :body
      t.integer :channel

      t.timestamps null: false
    end
  end
end
