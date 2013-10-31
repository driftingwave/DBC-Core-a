factory :user do |f|
	f.first_name { Faker::Name.first_name }
	f.last_name { Faker::Name.first_name }
	f.username { Faker::Internet.user_name }
	f.email { Faker::Internet.email }
	f.password "123"
end

factory :bad_user do
	f.first_name nil
end