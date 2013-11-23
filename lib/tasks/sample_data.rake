namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                          email: "example@railstutorial.org",
                          password: "foobar",
                          password_confirmation: "foobar",
                          admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit:12)
    users.each do |user|     
      fname = Faker::Name.name
      mname = Faker::Name.name
      lname = Faker::Name.name
      dateofbirth = Date.today - (365*7 - rand(200))
      @kid = Kid.create(
        fname: fname, 
        mname: mname, 
        lname: lname,
        dateofbirth: dateofbirth
        )
      user.kids << @kid
    end
    users = User.all(limit:6)
    users.each do |user|     
      fname = Faker::Name.name
      mname = Faker::Name.name
      lname = Faker::Name.name
      dateofbirth = Date.today - (365*7 - rand(200))
      @kid = Kid.create(
        fname: fname, 
        mname: mname, 
        lname: lname,
        dateofbirth: dateofbirth
        )
      user.kids << @kid
    end
  end
end
