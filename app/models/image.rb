class Image < ActiveRecord::Base
    mount_uploader :scenery_picture, ImageUploader
    
    # belongs_to :user
    def self.search(search)
      if search
        where("scenery_name LIKE :search OR scenery_address LIKE :search", search:"%#{search}%")
      end
    end
end
