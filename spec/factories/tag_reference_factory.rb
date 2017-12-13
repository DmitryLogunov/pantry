FactoryGirl.define do
  factory :tag_reference do
    tag_id { generate :n }
    thing_id { generate :n }
  end
end
