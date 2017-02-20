class AddPilotToJoiningForm < ActiveRecord::Migration
  def change
    add_reference :joining_forms, :pilot, index: true, foreign_key: true
  end
end
