class AddPositionToActionReport < ActiveRecord::Migration
  def change
    add_column :action_reports, :position, :integer
  end
end
