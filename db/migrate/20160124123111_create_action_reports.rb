class CreateActionReports < ActiveRecord::Migration
  def change
    create_table :action_reports do |t|
      t.references :pilot, index: true, foreign_key: true
      t.references :airframe, index: true, foreign_key: true
      t.references :tasking, index: true, foreign_key: true
      t.integer :hours
      t.integer :takeoffs
      t.integer :landings
      t.string :outcome
      t.integer :aa_kills
      t.integer :ag_kills
      t.text :notes
      t.string :status

      t.timestamps null: false
    end
  end
end
