User.create(first_name: "Ryan", last_name: "Kelley", username: "rskelley9", email: "rskelley9@gmail.com", password: "password")
User.create first_name: "bob", last_name: "bob", username: "bob", email: "bob@bob.bob", password: "bobbob"

# 20.times do

#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   username = Faker::Name.first_name
#   email = Faker::Internet.email
#   password = "Password"

#   User.create(first_name: first_name, last_name: last_name, username: username, email: email, password: password)
# end

User.create first_name: "James", last_name: "Howard", username: "how", email: "how@email.com", password: "password"
User.create first_name: "Ollie", last_name: "Brown", username: "o", email: "ols@email.com", password: "passwword"
User.create first_name: "Joan", last_name: "Smith", username: "yollo", email: "yollo@email.com", password: "password"
User.create first_name: "Jay", last_name: "Honda", username: "him", email: "him@email.com", password: "pawssword"
User.create first_name: "Tang", last_name: "Bron", username: "oo", email: "olss@email.com", password: "passwword"
User.create first_name: "Josan", last_name: "Smisth", username: "yolslo", email: "yollso@email.com", password: "psassword"
User.create first_name: "Jingle", last_name: "Johnson", username: "jingle", email: "jingle@email.com", password: "password"
User.create first_name: "Finger", last_name: "Hatman", username: "yollo", email: "yollo@email.com", password: "password"
User.create first_name: "Ryam", last_name: "Jeter", username: "jeter12", email: "jeter123@email.com", password: "password"
User.create first_name: "Paul", last_name: "Carrillo", username: "carrillo", email: "caroools@email.com", password: "password"
User.create first_name: "JZ", last_name: "Z", username: "jz123", email: "jz123@email.com", password: "passwword"
User.create first_name: "James", last_name: "Howard", username: "how", email: "how@email.com", password: "passwword"
User.create first_name: "Conner", last_name: "Berry", username: "boo", email: "bools@email.com", password: "pawssword"
User.create first_name: "Cling", last_name: "Wrap", username: "clinger", email: "clingon@email.com", password: "pwassword"
User.create first_name: "Jaws", last_name: "Jam", username: "jz12e3", email: "jz123@email.com", password: "passwword"
User.create first_name: "Joe", last_name: "Shmo", username: "heow", email: "hweow@email.com", password: "passwword"
User.create first_name: "Leyla", last_name: "Limmer", username: "bowo", email: "booels@email.com", password: "pawssword"
User.create first_name: "Lora", last_name: "Leaf", username: "lilbowow", email: "clingon@email.com", password: "pwassword"

Topic.create name: "UI, JQuery/Javascript, AJAX"
Topic.create name: "Careers and Employment"
Topic.create name: "SQL, Databases"
Topic.create name: "Engineering Empathy"
Topic.create name: "Animals that Bite"
Topic.create name: "Matt Jones"
Topic.create name: "Socrates"
Topic.create name: "Pairing is Cairing"
Topic.create name: "Git Crunk"
Topic.create name: "Sinatra, Rails"


30.times do
  user_id = (1..20).to_a
  topic_id = (1..10).to_a
  UserTopic.create(user_id: user_id.sample, topic_id: topic_id.sample)
end

UserTopic.create user_id: 1, topic_id: 2
UserTopic.create user_id: 1, topic_id: 4
UserTopic.create user_id: 1, topic_id: 5
UserTopic.create user_id: 2, topic_id: 1
UserTopic.create user_id: 2, topic_id: 3
UserTopic.create user_id: 2, topic_id: 5
UserTopic.create user_id: 3, topic_id: 2
UserTopic.create user_id: 3, topic_id: 3
UserTopic.create user_id: 3, topic_id: 4

UserTopic.create user_id: 1, topic_id: 2
UserTopic.create user_id: 1, topic_id: 4
UserTopic.create user_id: 1, topic_id: 5
UserTopic.create user_id: 2, topic_id: 1
UserTopic.create user_id: 2, topic_id: 3
UserTopic.create user_id: 2, topic_id: 5
UserTopic.create user_id: 3, topic_id: 2
UserTopic.create user_id: 3, topic_id: 3
UserTopic.create user_id: 3, topic_id: 4

UserTopic.create user_id: 4, topic_id: 9
UserTopic.create user_id: 5, topic_id: 10
UserTopic.create user_id: 6, topic_id: 10
UserTopic.create user_id: 7, topic_id: 8
UserTopic.create user_id: 8, topic_id: 7
UserTopic.create user_id: 9, topic_id: 6
UserTopic.create user_id: 10, topic_id: 5
UserTopic.create user_id: 11, topic_id: 4
UserTopic.create user_id: 12, topic_id: 3
UserTopic.create user_id: 13, topic_id: 7
UserTopic.create user_id: 14, topic_id: 6
UserTopic.create user_id: 15, topic_id: 5
UserTopic.create user_id: 16, topic_id: 4
UserTopic.create user_id: 17, topic_id: 3
UserTopic.create user_id: 18, topic_id: 3
UserTopic.create user_id: 19, topic_id: 7
UserTopic.create user_id: 20, topic_id: 6


# 80.times do
#   Question.create topic_id: topic_id, user_id: user_id, body: Faker:
# end

Question.create topic_id: 1, user_id: rand(1..20), body: "How Do I Select Stuff?"
Question.create topic_id: 1, user_id: rand(1..20), body: "Who is Jay Cory and Is He Available for Dinner this evening?"
Question.create topic_id: 1, user_id: rand(1..20), body: "AJAXing vs. Not Ajaxing. A Good Idea?"
Question.create topic_id: 1, user_id: rand(1..20), body: "How do I get to a post route and then delete my get after I redirect all in one swoop?"

Question.create topic_id: 1, user_id: rand(1..20), body: "When I append a form, what am I doing? (In reality)?"
Question.create topic_id: 1, user_id: rand(1..20), body: "FYI, JQUERY doesn't work with Netscape Navigator 1.0."
Question.create topic_id: 1, user_id: rand(1..20), body: "What's the different between $.post and $.get?"
Question.create topic_id: 1, user_id: rand(1..20), body: "What's a DOM?"

Question.create topic_id: 2, user_id: rand(1..16), body: "How do I get a job?"
Question.create topic_id: 2, user_id: rand(1..20), body: "Elliott == Jill? "
Question.create topic_id: 2, user_id: rand(1..4), body: "Hypothetically, let's say I'm thinking of moving to Estonia. Can Elliott hook me up with a job that pays mad bills there?"
Question.create topic_id: 2, user_id: rand(1..3), body: "All I care about is money. Is this a character flaw or is balling so hard as awesome as I think it is?"

Question.create topic_id: 2, user_id: rand(1..3), body: "I don't want a job. Ever. Is this okay?"
Question.create topic_id: 2, user_id: rand(1..3), body: "What kind of questions do they ask at a Groupon interview?"
Question.create topic_id: 2, user_id: rand(1..3), body: "I can whiteboard a working Sudoku Solver in nine seconds, please find me a job."
Question.create topic_id: 2, user_id: rand(1..3), body: "Ruby > Python?"

Question.create topic_id: 2, user_id: rand(1..3), body: "How do I get my dream job?"
Question.create topic_id: 2, user_id: rand(1..3), body: "What's more important: character or writing a linear search method?"

Question.create topic_id: 3, user_id: rand(1..16), body: "I can't install Postgres, help!"
Question.create topic_id: 3, user_id: rand(1..20), body: "What's the different between SQL and Seagull?"
Question.create topic_id: 3, user_id: rand(1..4), body: "Moneys have many bananas, but bananas have only one monkey. A peel has one monkey through it's banana. Help me schema this out."
Question.create topic_id: 3, user_id: rand(1..20), body: "What's a many to many relationship?"

Question.create topic_id: 3, user_id: rand(1..20), body: "Source?"
Question.create topic_id: 3, user_id: rand(1..20), body: "Torey Hickman is the man."
Question.create topic_id: 3, user_id: rand(1..20), body: "Polymorphic beasting. Show me how."
Question.create topic_id: 3, user_id: rand(1..19), body: "So, bottom line, we're not dropping the database again? I am disappoint."

Question.create topic_id: 3, user_id: rand(1..21), body: "Surely you must be kidding. You'd be a damn fool to believe that dropping the database isn't the right thing to do in this situation."
Question.create topic_id: 3, user_id: rand(1..18), body: "Dropping base vs dropping bass."

Question.create topic_id: 4, user_id: rand(1..16), body: "I have zero empathy for other human beings, can this be fixed?"
Question.create topic_id: 4, user_id: rand(1..20), body: "How do I get better at listening?"
Question.create topic_id: 4, user_id: rand(1..4), body: "Some advice on at achieving personal growth, any and all is appreciated."
Question.create topic_id: 4, user_id: rand(1..20), body: "I love Engineering Empathy, is this odd?"

Question.create topic_id: 5, user_id: rand(1..16), body: "Do snakes bite?"
Question.create topic_id: 5, user_id: rand(1..20), body: "What does fox say?"
Question.create topic_id: 5, user_id: rand(1..5), body: "I was bitten by a king cobra today. Directly in the face. Seriously, it bit my face. Should I go to a doctor?"
Question.create topic_id: 5, user_id: rand(1..20), body: "There's a salamander in the kitchen. It's flipping out. Can you help me?"

Question.create topic_id: 5, user_id: rand(1..20), body: "Do Salamander's bite?"
Question.create topic_id: 5, user_id: rand(1..20), body: "Coyotes, the most intelligent animal in the world? According to Stephen Hawking, the answer is yes."

Question.create topic_id: 6, user_id: rand(1..16), body: "Who is Matt Jones?"
Question.create topic_id: 6, user_id: rand(1..20), body: "Is Matt Jones the smartest man in the world?"
Question.create topic_id: 6, user_id: rand(1..6), body: "A brief history of Matt Jones"
Question.create topic_id: 6, user_id: rand(1..20), body: "WWMJD?"

Question.create topic_id: 6, user_id: rand(1..20), body: "Is Matt Jones coming back?"
Question.create topic_id: 6, user_id: rand(1..20), body: "This isn't even a question. I wanted to let you all know that I saw Matt Jones dunk on Lebron yesterday."
Question.create topic_id: 6, user_id: rand(1..20), body: "Matt Jones > Tom Ford."

Question.create topic_id: 7, user_id: rand(1..16), body: "How to log out of Socrates"
Question.create topic_id: 7, user_id: rand(1..20), body: "Is Socrates a program or is it reality?"
Question.create topic_id: 7, user_id: rand(1..6), body: "Using feedback as a weapon. Am I completely Ammoral?"
Question.create topic_id: 7, user_id: rand(1..20), body: "I'm having trouble with this whole shit sandwich thing. #Advanced"

Question.create topic_id: 8, user_id: rand(1..16), body: "Mentors never want to pair with me, what am I doing wrong?"
Question.create topic_id: 8, user_id: rand(1..20), body: "I need some help with Deaf Grandma. #Advanced"
Question.create topic_id: 8, user_id: rand(1..10), body: "Can I mentor as a phase I boot?"

Question.create topic_id: 9, user_id: rand(1..16), body: "Git pull vs git push, help?"
Question.create topic_id: 9, user_id: rand(1..20), body: "Why is rebasing the worst?"
Question.create topic_id: 9, user_id: rand(1..10), body: "git push origin master --force; Will this solve my problems? I'm prepared to delete all of my local and remote branches. #HouseCleaning"
Question.create topic_id: 9, user_id: rand(1..10), body: "Help me Git it done."
Question.create topic_id: 9, user_id: rand(1..20), body: "Is there anything git checkout can't do?"

Question.create topic_id: 10, user_id: rand(1..16), body: "Rails scalability?"
Question.create topic_id: 10, user_id: rand(1..20), body: "Is Rails exactly the same as Flask and Django?"
Question.create topic_id: 10, user_id: rand(1..10), body: "MVC? What does stand for?"
Question.create topic_id: 10, user_id: rand(1..10), body: "How do I render a partial in one of my views?"
Question.create topic_id: 10, user_id: rand(1..20), body: "How do I change a user's password that has been hashed with BCrypt?"

Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "I don't think that's a good idea."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "You should just use Rails."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "I'm an expert, and I say go for it."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "DBC is about being a chef, not a customer. I suggest you learn to cook. Good day sir."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "Show your ignorance."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "Just show your ignorance and shit will work itself out."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "You should repeat. Don't be disappoint."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "I am disappoint."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "Good question, I have no idea."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "Good question. The ham of the matter comes down to fundamentals."
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "git push origin master -force"
Answer.create question_id: rand(1..60), user_id: rand(1..20), vote_total: rand(1..20), body: "git rebass --BernieLean"
Answer.create question_id: rand(1..60), user_id: 1, vote_total: rand(1..20), body: "I don't think that's a good idea."


Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "Hey guys, who wants Chipotle?")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "You should ask Matt Jones.")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "You should check out Stack Overflow.")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "RKelley.")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "No, you should use map.")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "Just iterate through the array and then recurse.")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "It is not reasonable to italicize just part of a word, especially when you're dealing with code and names often appear with multiple underscores. Therefore, GFM ignores multiple underscores in words.")
Comment.create(answer_id: rand(1..11), user_id: rand(1..20), body: "Git will work better if you start committing more and branching less. Branches are your enemy. Commits are too, but there's sort of a lesser enemy. Watch your back.")


Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample
Vote.create answer_id: rand(1..12), user_id: rand(1..20), vote_type: [-1, 1].sample

# query to find vote type question.answers.first.votes.first.vote_type
