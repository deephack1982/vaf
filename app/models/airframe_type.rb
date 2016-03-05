class AirframeType < ActiveRecord::Base
  CATEGORY = ["Fixed Wing","Rotary Wing"]

  has_many :airframes
  has_attached_file :image, styles: { normal: "518x300"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def fullname
    "#{name} #{callsign}"
  end
end
