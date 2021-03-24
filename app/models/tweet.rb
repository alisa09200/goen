class Tweet < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :text, presence: true
end
