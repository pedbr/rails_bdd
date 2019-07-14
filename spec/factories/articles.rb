FactoryBot.define do
  factory :article do
    association :user
    title { "MyString" }
    content { "MyText" }
  end
end
