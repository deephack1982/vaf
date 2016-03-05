class ChangeHoursToFloat < ActiveRecord::Migration
  def change
    change_column :action_reports, :hours, :float
    change_column :airframes, :hours, :float
  end
end
