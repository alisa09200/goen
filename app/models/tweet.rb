class Tweet < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :reservations
end
