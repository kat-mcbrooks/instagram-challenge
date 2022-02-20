class Post < ApplicationRecord
  has_one_attached :image, service: :local
  has_many_attached :images
  #has_many :comments, dependent: :destroy

  validates :content, presence: true, length: { maximum: 1000}
  has_rich_text :content
end
