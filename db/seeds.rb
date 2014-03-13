# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

count = Course.where(title: 'Rails Night Class').count

puts "Creating initial courses if #{count} is 0"
if count == 0
  Course.create title: 'Rails Night Class', description: 'Learning Rails by Night!'
end