class User < ApplicationRecord
	mount_uploader :photo, ProfileUploader
end
