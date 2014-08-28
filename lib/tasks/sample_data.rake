namespace :db do
  desc 'Fill database with sample data'
  task populate: :environment do
    User.create!(name: 'Example User',
                  email: 'example@rails.com',
                  password: 'foobar',
                  password_confirmation: 'foobar')
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@rails.com"
      password = 'password'
      User.create!(
          name: name,
          email: email,
          password: password,
          password_confirmation: password
      )
    end

    users = User.all
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.micro_posts.create!(content: content) }
    end
  end
end