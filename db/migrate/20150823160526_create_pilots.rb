class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :email
      t.string :rank

      t.timestamps null: false
    end
  end
end
