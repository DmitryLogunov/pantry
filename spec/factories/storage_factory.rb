FactoryGirl.define do
  factory :storage do
    title { generate :string}
    description { generate :string }
  end
end
