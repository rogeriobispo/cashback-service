FactoryBot.define do
  factory :offer do
    advertiser_name { Faker::Name.name }
    url { Faker::Internet.url }
    description { Faker::Lorem }
    starts_at { Date.today }
    ends_at { Date.today + 3.days }
    premium { false }

    trait :offer_premium do 
      premium { true }
    end

    trait :disabled do 
      starts_at { Date.yesterday - 3.days }
      ends_at { Date.yesterday }
    end

    trait :future do
      starts_at { Date.tomorrow + 3.days }
      ends_at { Date.tomorrow }
    end
    
  end


end
