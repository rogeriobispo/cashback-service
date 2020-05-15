FactoryBot.define do
  factory :offer do
    advertiser_name { Faker::Name.name }
    url { Faker::Internet.url }
    description { Faker::Lorem }
    starts_at { Date.today }
    ends_at { Date.today + 3.days }
    premium { false }
  end

  factory :offerPremium do 
    premium { true }
  end
end
