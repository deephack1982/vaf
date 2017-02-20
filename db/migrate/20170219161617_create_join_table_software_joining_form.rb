class CreateJoinTableSoftwareJoiningForm < ActiveRecord::Migration[5.0]
  def change
    create_join_table :softwares, :joining_forms do |t|
      # t.index [:software_id, :joining_form_id]
      # t.index [:joining_form_id, :software_id]
    end
  end
end
