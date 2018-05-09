class User < ApplicationRecord
	mount_uploader :photo, ProfileUploader
	validates :name, presence: true
end
