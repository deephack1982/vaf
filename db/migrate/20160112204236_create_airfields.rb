class CreateAirfields < ActiveRecord::Migration
  def change
    create_table :airfields do |t|
      t.string :name
      t.string :airfield_type
      t.string :ATC_channel
      t.string :ATIS_channel

      t.timestamps null: false
    end
  end
end
