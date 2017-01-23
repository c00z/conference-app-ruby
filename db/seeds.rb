# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Hello from seeds.rb"

Speakers.delete_all

speakers_data = [
    {:first=>"Cory", :last=>"Fauver", :email=>"cory@example.com"},
    {:first=>"Brianna", :last=>"Veenstra", :email=>"brianna@example.com"},
    {:first=>"Matt", :last=>"Laguardia", :email=>"matt@example.com"},
    {:first=>"Ilias", :last=>"Tsangaris", :email=>"ilias@example.com"}
]

Speaker.create(speakers_data)
