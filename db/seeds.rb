# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Hello from seeds.rb"

Speaker.delete_all

speakers_data = [
    {:first=>"Cory", :last=>"Fauver", :email=>"cory@example.com"},
    {:first=>"Brianna", :last=>"Veenstra", :email=>"brianna@example.com"},
    {:first=>"Matt", :last=>"Laguardia", :email=>"matt@example.com"},
    {:first=>"Ilias", :last=>"Tsangaris", :email=>"ilias@example.com"},
    {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
    {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
    {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
    {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
    {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email}
]

Speaker.create(speakers_data)

Talk.delete_all


talks_data = [
    {:topic=>"A Fashion School for Ants?", :duration=>90, :start_time=>DateTime.now-(1.0/24)},
    {:topic=>"Button-down Bliss", :duration=>45, :start_time=>DateTime.now+(23.0/24)},
    {:topic=>"Ambi-turning", :duration=>30, :start_time=>DateTime.now+(2.0/24)},
    {:topic=>"The Joy of Jumpsuits", :duration=>30, :start_time=>DateTime.now+(4.0/24)}
]

Talk.create(talks_data)
