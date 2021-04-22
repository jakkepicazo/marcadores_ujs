# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beermark.destroy_all
Category.destroy_all
Kind.destroy_all

cat = Category.create(name: 'Belgian Strong Ale',  style:'beer', character: true)
cat1 = Category.create(name: 'Belgian Strong',  style:'Beer', character: true)
cat2 = Category.create(name: 'Belgian',  style:'Beer', character: true)

kind = Kind.create(name: 'Lager') 
kind1 = Kind.create(name: 'Porter') 
kind2 = Kind.create(name: 'Stout') 
kind3 = Kind.create(name: 'Wheat') 

sub1 = Category.create(name: 'Dark',  category_id:cat1, character: true)
sub2 = Category.create(name: 'light',  category_id:cat, character:true)
sub3 = Category.create(name: 'Dark',  category_id:cat2, character:true)
sub4 = Category.create(name: 'Light',  category_id:cat1, character:true)



beer = Beermark.create!(name: 'Heineken', malts: 'Rye malt', alcohol: 5, category:cat1, kind: kind1)
beer = Beermark.create!(name: 'Bavaria', malts: 'Pilsner', alcohol: 6, category:cat, kind: kind)
beer = Beermark.create!(name: 'Imperial', malts: 'Pale', alcohol: 4, category:cat2, kind: kind1)
beer = Beermark.create!(name: 'Pilsener', malts: 'Vienna', alcohol: 7, category:cat, kind: kind)
beer = Beermark.create!(name: 'Corona', malts: 'Vienna', alcohol: 7, category:cat2, kind: kind2)
beer = Beermark.create!(name: 'Modelo', malts: 'Vienna', alcohol: 4, category:cat, kind: kind)
beer = Beermark.create!(name: 'Beck', malts: 'Vienna', alcohol: 5, category:cat1, kind: kind3)
beer = Beermark.create!(name: 'BudLigth', malts: 'Vienna', alcohol: 7, category:cat, kind: kind)
beer = Beermark.create!(name: 'Pilsen', malts: 'Vienna', alcohol: 5, category:cat, kind: kind1)
beer = Beermark.create!(name: 'Stella', malts: 'Vienna', alcohol: 7, category:cat2, kind: kind)
beer = Beermark.create!(name: 'Pilsen', malts: 'Vienna', alcohol: 5, category:cat, kind: kind2)
beer = Beermark.create!(name: 'Corona', malts: 'Vienna', alcohol: 7, category:cat2, kind: kind1)
beer = Beermark.create!(name: 'Bavaria', malts: 'Vienna', alcohol: 6, category:cat, kind: kind3)
beer = Beermark.create!(name: 'Pilsener', malts: 'Vienna', alcohol: 4, category:cat1, kind: kind)


