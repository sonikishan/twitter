namespace :db do
  desc "Fill databse with simple data"
  task populate: :environment do
  	User.create!(name: "Example User",
  		email: "example@railstutorial.org",
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
  end	
end