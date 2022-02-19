class Post < ApplicationRecord
  

  #has_many :comments, dependent: :destroy

  validates :content, presence: true, length: { maximum: 1000}
  has_rich_text :content
end
