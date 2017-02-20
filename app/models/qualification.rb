class Qualification < ApplicationRecord
  has_and_belongs_to_many :pilots

  has_attached_file :patch, styles: { small: "150x50" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :patch, content_type: /\Aimage\/.*\Z/

end
