FactoryGirl.define do
  factory :thing do
    title { generate :string}
    description { generate :string }
    category_id { create(:category).id }
    storage_id { create(:storage).id }
    owner_id { create(:owner).id }
    last_inspect_date { generate :date }
    expire_date  { generate :date }

    trait :with_tags do
      after(:create) do |thing|
        tags = create_list :tag, 3

        tags.each do |tag|
          create :tag_reference, thing_id: thing.id, tag_id: tag.id
        end
      end
    end
  end
end
