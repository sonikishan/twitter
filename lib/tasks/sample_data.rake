namespace :db do
  desc "Fill databse with simple data"
  task populate: :environment do
  	User.create!(name: "Soni Kishan",
  		email: "kishansoni@heraldsolutions.in",
  		password: "sonikishan",
  		password_confirmation: "sonikishan" )
  	99.times do |n|
  		name = Faker::Name.name
  		email = "example-#{n+1}@railstutorial.org"
  		password = "sonikishan"
  		User.create!(name: name,
  		    email: email,
  		    password: password,
  		    password_confirmation: password )
  	end
    users = User.all(limit: 6)

    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end	
end