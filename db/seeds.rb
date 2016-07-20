# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|

  # User datas
  email = Faker::Internet.email
  name = Faker::Name.name
  password = 'password'
  uid = SecureRandom.uuid
  avatar_url = Faker::Avatar.image

  user = User.create!(email: email,
                      name: name,
                      password: password,
                      password_confirmation: password,
                      avatar: open(avatar_url),
                      uid: uid)
  # Article datas
  picture_url = Faker::Avatar.image

  Article.create!(title: 'title' + n.to_s,
                 content: 'comment' + n.to_s,
                 picture: open(picture_url),
                 user_id: user.id)
end
