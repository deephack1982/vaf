class AddSquadronToPilot < ActiveRecord::Migration
  def change
    add_reference :pilots, :squadron, index: true, foreign_key: true
  end
end
