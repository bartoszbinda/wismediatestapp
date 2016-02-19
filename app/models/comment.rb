class Comment < ActiveRecord::Base
  belongs_to :article
  validates :commenter, presence: true, length: { minimum: 3, maximum: 60 }
  validates :comment, presence: true, length: { minimum: 30, maximum: 300 }
  
end
