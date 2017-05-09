class Image < ActiveRecord::Base
    mount_uploader :scenery_picture, ImageUploader
    
    belongs_to :user
    has_many :image_comment, -> { order "created_at DESC"}
    def self.search(search)
      if search
        where("scenery_name LIKE :search OR scenery_address LIKE :search", search:"%#{search}%")
      end
    end
    def self.northern(add)
      if add
         where scenery_address: add
      end
    end
end
