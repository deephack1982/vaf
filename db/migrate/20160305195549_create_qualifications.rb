class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :tag
      t.string :name
      t.text :description
      t.attachment :patch

      t.timestamps null: false
    end

    create_table :pilots_qualifications, id: false do |t|
      t.belongs_to :pilot, index: true
      t.belongs_to :qualification, index: true
    end
  end
end
