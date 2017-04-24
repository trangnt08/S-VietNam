class Image < ActiveRecord::Base
    mount_uploader :scenery_picture, ImageUploader
    
    # belongs_to :user
    
    # has_attached_file :scenery_picture
end
