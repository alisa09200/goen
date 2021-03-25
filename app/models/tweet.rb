class Tweet < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :text, presence: true
  belongs_to :user
end
