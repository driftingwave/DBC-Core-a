User.create first_name: "Ryan", last_name: "Kelley", username: "rskelley9", email: "rskelley9@gmail.com", password: "password"
User.create first_name: "bob", last_name: "bob", username: "bob", email: "bob@bob.bob", password: "bobbob"

# 20.times do

# first_name = Faker::Name.first_name
# last_name = Faker::Name.last_name
# username = (Faker::Name.first_name) + "#{rand(1..1000)}"
# email = Faker::Internet.email
# password = "password"

# User.create(first_name: first_name, last_name: last_name, username: username, email: email, password: password)
# end

User.create first_name: "James", last_name: "Howard", username: "how", email: "how@email.com", password: "password"
User.create first_name: "Ollie", last_name: "Brown", username: "o", email: "ols@email.com", password: "password"
User.create first_name: "Joan", last_name: "Smith", username: "yollo", email: "yollo@email.com", password: "password"

Topic.create name: "Science"
Topic.create name: "Sports"
Topic.create name: "Politics"
Topic.create name: "Economics"
Topic.create name: "Culture"

# 30.times do
#   user_id = (1..20).to_a
#   topic_id = (1..5).to_a

#   UserTopic.create user_id: user_id.sample, topic_id: topic_id.sample
# end

UserTopic.create user_id: 1, topic_id: rand(1..5)
UserTopic.create user_id: 1, topic_id: rand(1..5)
UserTopic.create user_id: 1, topic_id: rand(1..5)
UserTopic.create user_id: 2, topic_id: rand(1..5)
UserTopic.create user_id: 2, topic_id: rand(1..5)
UserTopic.create user_id: 2, topic_id: rand(1..5)
UserTopic.create user_id: 3, topic_id: rand(1..5)
UserTopic.create user_id: 3, topic_id: rand(1..5)
UserTopic.create user_id: 3, topic_id: rand(1..5)

# 80.times do
# Question.create topic_id: topic_id, user_id: user_id, body: Faker:

# end

Question.create topic_id: rand(1..5), user_id: rand(1..3), body: "What is the answer to the universe?"
Question.create topic_id: rand(1..5), user_id: rand(1..3), body: "What is the answer to the moon?"
Question.create topic_id: rand(1..5), user_id: rand(1..3), body: "What is the answer to the sun?"
Question.create topic_id: rand(1..5), user_id: rand(1..3), body: "What is the answer to Pluto?"
Question.create topic_id: rand(1..5), user_id: rand(1..3), body: "What is the answer to Saturn?"
Question.create topic_id: rand(1..5), user_id: rand(1..3), body: "What is the answer to Venus?"

Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Purple"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Blue"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Orange"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Red"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Yellow"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Greed"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Blue"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Indigo"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Violet"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Crimson"
Answer.create question_id: rand(1..6), user_id: rand(1..3), vote_total: rand(1..3), body: "Brown"

Comment.create answer_id: rand(1..11), user_id: rand(1..3), body: "blah"
Comment.create answer_id: rand(1..11), user_id: rand(1..3), body: "moo"
Comment.create answer_id: rand(1..11), user_id: rand(1..3), body: "woof"
Comment.create answer_id: rand(1..11), user_id: rand(1..3), body: "tweet"
Comment.create answer_id: rand(1..11), user_id: rand(1..3), body: "oink"
Comment.create answer_id: rand(1..11), user_id: rand(1..3), body: "quack"

Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), vote_type: [-1, 1].sample

# query to find vote type question.answers.first.votes.first.vote_type
