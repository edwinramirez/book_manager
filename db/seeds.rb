require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do 
	Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
								birthdate: Faker::Date.between(20.years.ago, 50.years.ago))
end

5.times do
	PublisherHouse.create(name: Faker::Book.publisher)
end

20.times do 
	p = PublisherHouse.order("Rand()").limit(1)
	a = Author.order("Rand()").limit(1).first
	book = Book.create(title: Faker::Book.title, pages: Faker::Number.number(2), 
											published_at: Faker::Date.between(5.years.ago, Date.today), 
											publisher_house_id: p.first.id,
											cover: 'http://www.coverbrowser.com/image/battle-of-the-planets/1-1.jpg')
	book.book_by_authors.create(author: a)
end