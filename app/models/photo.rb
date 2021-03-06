class Photo < ApplicationRecord
  belongs_to :album, optional: true
  belongs_to :user
  has_many :likes, as: :heart, dependent: :destroy
  validates :title, presence: true, length: {maximum: 140}
  validates :description, presence: true, length: {maximum: 300}
  validates :sharing_mode, presence: true, acceptance: { accept: ['private', 'public'] }

  mount_uploader :thumb, ImageUploader

  #  maximum 01 image. Accepted formats are jpeq, png and gif. Maximum size is 5Mb.
  # Attached image ( ?
end

