# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all


User.create([{name: "John Doe", email: "JohnDoe@email.com", password: "JohnDoe1234"},
 {name: "Dave Hawkins", email: "DaveHawkins@email.com", password: "DaveHawkins1234"},
 {name: "Matías Aimar", email: "MatíasAimar@email.com", password: "MatíasAimar1234"},
 {name: "Seba Duckworth", email: "SebaDuckworth@email.com", password: "SebaDuckworth1234"},
 {name: "Steve Rose", email: "SteveRose@email.com", password: "SteveRose1234"}])

tag1 = Tag.create(name: "Sports")
tag2 = Tag.create(name: "Computer Science")
tag3 = Tag.create(name: "NBA")
tag4 = Tag.create(name: "Champions League")
tag5 = Tag.create(name: "Tag1")


post1 = Post.create(title: 'Post 1',content: 'Post 1 content',published_at: Time.now,answers_count: 10,likes_count: 5)
post2 = Post.create(title: 'Post 2',content: 'Post 2 content',published_at: Time.now,answers_count: 45,likes_count: 20)
post3 = Post.create(title: 'Post 3',content: 'Post 3 content',published_at: Time.now,answers_count: 4,likes_count: 30)
post4 = Post.create(title: 'Post 4',content: 'Post 4 content',published_at: Time.now,answers_count: 7,likes_count: 1)
post5 = Post.create(title: 'Post 5',content: 'Post 5 content',published_at: Time.now,answers_count: 7,likes_count: 19)
post6 = Post.create(title: 'Post 6',content: 'Post 6 content',published_at: Time.now,answers_count: 13,likes_count: 42)
post7 = Post.create(title: 'Post 7',content: 'Post 7 content',published_at: Time.now,answers_count: 2,likes_count: 500)
post8 = Post.create(title: 'Post 8',content: 'Post 8 content',published_at: Time.now,answers_count: 1,likes_count: 23)
post9 = Post.create(title: 'Post 9',content: 'Post 9 content',published_at: Time.now,answers_count: 9,likes_count: 10)
post10 = Post.create(title: 'Post 10',content: 'Post 10 content',published_at: Time.now,answers_count: 0,likes_count: 5)

post1.tags << tag1
post1.tags << tag3

post2.tags << tag5
post2.tags << tag4

post3.tags << tag1
post3.tags << tag3

post4.tags << tag4
post4.tags << tag5

post5.tags << tag1
post5.tags << tag3

post6.tags << tag1
post6.tags << tag3

post7.tags << tag5
post7.tags << tag4

post8.tags << tag1
post8.tags << tag3

post9.tags << tag4
post9.tags << tag5

post10.tags << tag1
post10.tags << tag3

