class Restaurant < ApplicationRecord
	
	has_many :dishes

	has_attached_file :image,                    
                    styles: { medium: '200x200>', thumb: '60x60>'},                   
                    default_url: '/images/:style/missing.png'
	validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/jpg', 'image/gif', 'image/png']
end
