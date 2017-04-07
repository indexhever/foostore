# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Admin User",
			 email: "admin@foostore.com",
			 password: "admin123",
			 password_confirmation: "admin123")

99.times do |n|
	name = "Example-#{n+1}"
	description_en = "Description English#{n+1}"
	description_pt = "Descrição Português#{n+1}"
	cover = "http://www.imagesource.com/Doc/IS0/Media/TR5/2/4/2/0/IE236-086.jpg"
	category = 1
	status = true
	Product.create!(name: name,
					description_en: description_en,
					description_pt: description_pt,
					cover: cover,
					category: category,
					status: status)	
end