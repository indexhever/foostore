# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

99.times do |n|
	name = "Example-#{n+1}"
	description_en = "Description English#{n+1}"
	description_pt = "Descrição Português#{n+1}"
	category = "Game"
	status = true
	Product.create!(name: name,
					description_en: description_en,
					description_pt: description_pt,
					category: category,
					status: status)	
end