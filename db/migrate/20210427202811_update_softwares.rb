class UpdateSoftwares < ActiveRecord::Migration[5.0]
  def change
    Software.create([{ name: 'DCS F/A-18C', required: false}, { name: 'DCS F-16C', required: false}, { name: 'DCS A10C', required: false}, { name: 'DCS AV8B', required: false}])
  end
end

