FactoryGirl.define do
  factory :photo do
    thing_id { generate :n }
    path { generate :string}
  end
end
