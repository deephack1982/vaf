class CreateAirframes < ActiveRecord::Migration
  def change
    create_table :airframes do |t|
      t.references :airframe_type, index: true, foreign_key: true
      t.string :tail_number
      t.string :location
      t.references :squadron, index: true, foreign_key: true
      t.decimal :hours
      t.string :condition

      t.timestamps null: false
    end
  end
end
