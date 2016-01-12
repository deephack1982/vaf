class AddAirfieldToSquadron < ActiveRecord::Migration
  def change
    add_reference :squadrons, :airfield, index: true, foreign_key: true
  end
end
