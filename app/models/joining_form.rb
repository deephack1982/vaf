class JoiningForm < ActiveRecord::Base
  belongs_to :pilot

  accepts_nested_attributes_for :pilot

  SOFTWARE = ["DCS World 1.5","DCS L39C","Discord","DCS Simple Radio Standalone","DCS F5","DCS Mig21bis","DCS M2000C","DCS Gazelle","DCS Huey","DCS Mi8"]
end
