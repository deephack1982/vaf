class CreateSquadrons < ActiveRecord::Migration
  def change
    create_table :squadrons do |t|
      t.string :name
      t.string :aircraft

      t.timestamps null: false
    end
  end
end
