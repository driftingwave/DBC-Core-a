User.create first_name: "James", last_name: "Howard", username: "how", email: "how@email.com", password: "password"
User.create first_name: "Ollie", last_name: "Brown", username: "o", email: "ols@email.com", password: "password"
User.create first_name: "Joan", last_name: "Smith", username: "yollo", email: "yollo@email.com", password: "password"

Topic.create name: "Science"
Topic.create name: "Sports"
Topic.create name: "Politics"
Topic.create name: "Economics"
Topic.create name: "Culture"

UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)
UserTopic.create user_id: rand(1..3), topic_id: rand(1..5)

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

Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
Vote.create answer_id: rand(1..11), user_id: rand(1..3), type: [-1, 1].sample
