class AddCallsignToPilots < ActiveRecord::Migration
  def change
    add_column :pilots, :callsign, :string
    add_column :pilots, :country, :string
  end
end
