FactoryGirl.define do
  factory :thing do
    title { generate :string}
    description { generate :string }
    category_id { create(:category).id }
    storage_id { create(:storage).id }
    storage_detailed_info { generate :string }
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

    trait :with_photos do
      after(:create) do |thing|
        create_list :photo, 2 , thing_id: thing.id
      end
    end
  end
end
