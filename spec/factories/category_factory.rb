FactoryGirl.define do
  factory :category do
    title { generate :string}
    description { generate :string }
  end
end
