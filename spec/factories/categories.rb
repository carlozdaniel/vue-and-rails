FactoryBot.define do
  factory :category do
    name { "MyString" }
    sequence(:name) { |n| "category#{n}" }
    description { "MyText" }
  end
  
  trait :with_movies do
    after :create do |category|
      create_list :movie
    end
  end
end
