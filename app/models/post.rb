class Post < ApplicationRecord
  has_one_attached :image, service: :local #this local service would override the configuration if it were set to cloud

  has_many_attached :images do |attachable|
  attachable.variant :thumb, resize_to_limit: [100, 100]
  attachable.variant :medium, resize_to_limit: [300, 300]
end
  #has_many :comments, dependent: :destroy
  belongs_to :user

  validates :content, presence: true, length: { maximum: 1000}
  has_rich_text :content
end
