FactoryBot.define do
  factory :accommodation do
    available_beds { 1 }
    price { 1 }
    description { "MyText" }
    has_wifi { false }
    welcome_message { "MyText" }
  end
end
