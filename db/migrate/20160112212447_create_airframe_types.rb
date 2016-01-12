class CreateAirframeTypes < ActiveRecord::Migration
  def change
    create_table :airframe_types do |t|
      t.string :name
      t.string :callsign
      t.string :category
      t.decimal :cost
      t.decimal :maintenance_hours

      t.timestamps null: false
    end
  end
end
