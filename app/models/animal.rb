class Animal < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
