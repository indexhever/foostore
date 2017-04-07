class Product < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :description_en, presence: true, length: { maximum: 255 }
	validates :description_pt, presence: true, length: { maximum: 255 }
	validates :category, presence: true
	validates :status, presence: true
end
