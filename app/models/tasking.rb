class Tasking < ActiveRecord::Base
  TASK = ["CAP","Training","Intercept","QRA","CAS","Ground Attack"]

  belongs_to :mission
  belongs_to :airframe_type
  belongs_to :base, :foreign_key => 'primary_base_id'
  belongs_to :base, :foreign_key => 'alternate_base'
end
