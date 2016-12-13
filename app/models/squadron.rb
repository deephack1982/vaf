class Squadron < ActiveRecord::Base
  AIRCRAFT = ["A10C","Mig21bis","F15C"]

  has_many :pilots
  has_many :airframes
  belongs_to :airfield

  has_attached_file :badge, styles: { small: "300x500" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :badge, content_type: /\Aimage\/.*\Z/
end
