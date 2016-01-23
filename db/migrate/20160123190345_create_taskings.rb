class CreateTaskings < ActiveRecord::Migration
  def change
    create_table :taskings do |t|
      t.string :callsign
      t.references :mission, index: true, foreign_key: true
      t.references :airframe_type, index: true, foreign_key: true
      t.integer :number
      t.string :tasking_type
      t.text :notes
      t.integer :channel
      t.integer :primary_base_id
      t.integer :alternate_base_id

      t.timestamps null: false
    end
  end
end
