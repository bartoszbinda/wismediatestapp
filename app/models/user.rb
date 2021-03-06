class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "40x40>" }, default_url: "http://pbs.twimg.com/profile_images/434056260/Favicon_copy_normal.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :nick, presence: true, uniqueness: true, length: { minimum: 3, maximum: 60 }
  validates :email, presence: true
  validates_with AttachmentSizeValidator, attributes: :avatar, less_than: 1.megabytes
end
