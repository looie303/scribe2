FactoryGirl.define do
  factory :user do
    sequence(:name)   { |n| "Person #{n}" }
    sequence(:email)  { |n| "person_#{n}@example.com" }
    password  "foobar"
    password_confirmation "foobar"
    
    factory :admin do
      admin true
    end
  end
  
  startdate = Date.today - 365*7
  
  factory :kid do
    sequence(:fname)   { |n| "Kid fname #{n}" }
    sequence(:mname)   { |n| "Kid mname #{n}" }
    sequence(:lname)   { |n| "Kid lname #{n}" }
    sequence(:dateofbirth) { |n| startdate - rand(200) }
  end
end