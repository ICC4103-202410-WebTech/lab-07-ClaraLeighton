# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.delete_all

u1 = User.create(
    name: "Clara Leighton",
    email: "c.leighton@miuandes.cl",
    password: "Clara1234"
)
u2 =User.create(
    name: "Borja Manterola",
    email: "borjamanteh@miuandes.cl",
    password: "Borka4321"
)
u3 = User.create(
    name: "Rafaella Iver",
    email: "river@miuandes.cl",
    password: "Rafa1234"
)
u4 = User.create(
    name: "Sofia Castelli",
    email: "scastelli@miuandes.cl",
    password: "Toti4321"
)
u5 = User.create(
    name: "John Doe",
    email: "johndoe@miuandes.cl",
    password: "johndoe"
)

Post.delete_all

p1 = Post.create(
    title: "Beach",
    content: "Beach days with my friends :)",
    user_id: u1.id,
    published_at: DateTime.new(2024, 04, 26, 8, 30, 0), 
    answers_count: 100,
    likes_count: 500,
)
p2 = Post.create(
    title: "Trekking",
    content: "Trekking in the mountains",
    user_id: u2.id,
    published_at: DateTime.new(2024, 04, 26, 11, 15, 0), 
    answers_count: 120,
    likes_count: 620,
)
p3 = Post.create(
    title: "Sunset",
    content: "Sunset picture :)",
    user_id: u3.id,
    published_at: DateTime.new(2024, 04, 26, 20, 0, 0), 
    answers_count: 50,
    likes_count: 1500,
)
p4 = Post.create(
    title: "Night out",
    content: "Night out with my friends",
    user_id: u4.id,
    published_at: DateTime.new(2024, 04, 26, 15, 0, 0), 
    answers_count: 200,
    likes_count: 2000,
)
p5 = Post.create(
    title: "Music",
    content: "My favorites albums",
    user_id: u5.id,
    published_at: DateTime.new(2024, 04, 26, 0, 0, 0), 
    answers_count: 60,
    likes_count: 320,
)
p6 = Post.create(
    title: "Pets",
    content: "I love dogs and cats",
    user_id: u1.id,
    published_at: DateTime.new(2024, 04, 26, 8, 30, 0), 
    answers_count: 30,
    likes_count: 300,
)
p7 = Post.create(
    title: "Dinner",
    content: "Dinner with friends and family",
    user_id: u2.id,
    published_at: DateTime.new(2024, 04, 26, 11, 15, 0), 
    answers_count: 90,
    likes_count: 250,
)
p8 = Post.create(
    title: "Nature",
    content: "Nature <3",
    user_id: u3.id,
    published_at: DateTime.new(2024, 04, 26, 20, 0, 0), 
    answers_count: 150,
    likes_count: 500,
)
p9 = Post.create(
    title: "Tenis",
    content: "Playing tenis!",
    user_id: u4.id,
    published_at: DateTime.new(2024, 04, 26, 15, 0, 0), 
    answers_count: 40,
    likes_count: 400,
)
p10 = Post.create(
    title: "Post 1",
    content: "Fútbol game",
    user_id: u5.id,
    published_at: DateTime.new(2024, 04, 26, 0, 0, 0), 
    answers_count: 70,
    likes_count: 600,
)

Tag.delete_all

t1 = Tag.create(
    name: "outside"
)
t2 = Tag.create(
    name: "friends"
)
t3 = Tag.create(
    name: "Tag 1"
)
t4 = Tag.create(
    name: "sports"
)
t5 = Tag.create(
    name: "love"
)

p1.tags << t1
p1.tags << t2

p2.tags << t1
p2.tags << t4

p3.tags << t1
p3.tags << t5

p4.tags << t2
p4.tags << t3

p5.tags << t3
p5.tags << t5

p6.tags << t3
p6.tags << t5

p7.tags << t2
p7.tags << t5

p8.tags << t1
p8.tags << t4

p9.tags << t3
p9.tags << t4

p10.tags << t2
p10.tags << t4