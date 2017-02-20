class JoiningForm < ApplicationRecord
  belongs_to :pilot
  has_and_belongs_to_many :softwares

end
