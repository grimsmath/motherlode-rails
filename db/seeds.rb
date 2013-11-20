# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


matt = User.create({username: 'matt', password: 'pass', password_confirmation: 'pass', name: 'Matt Walston', admin: true})
david = User.create({username: 'david', password: 'pass', password_confirmation: 'pass', name: 'David King', admin: true})
nicole = User.create({username: 'nicole', password: 'pass', password_confirmation: 'pass', name: 'Nicole DeRoin', admin: true})
uday = User.create({username: 'uday', password: 'pass', password_confirmation: 'pass', name: 'Udaykiran Allika', admin: true})

fcgm = Category.create({name: 'First Coast Green Map'})
local_food = Category.create({name: 'Local Food', parent: fcgm})
farm_market = Category.create({name: 'Farmers Markets', parent: local_food})
comm_garden = Category.create({name: 'Community Gardens', parent: local_food})

parkexp = Category.create({name: 'Park Experience'})


Nugget.create({title: "Title", body: 'Lorem ipsum', user: nicole, category: comm_garden, published: true})