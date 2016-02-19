class Article < ActiveRecord::Base
  has_many :comments
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: nil 
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :title, presence:true, length: { minimum:5, maximum: 200}
end
