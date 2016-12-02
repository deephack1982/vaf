class CreateJoiningForms < ActiveRecord::Migration
  def change
    create_table :joining_forms do |t|
      t.integer :age
      t.boolean :english_proficiency
      t.boolean :available
      t.string :software
      t.integer :years_experience
      t.string :interests
      t.text :notes

      t.timestamps null: false
    end
  end
end
