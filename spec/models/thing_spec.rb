require 'rails_helper'

describe Thing do
  context "relations" do
    let(:thing) { create :thing, :with_tags, :with_photos }

    it "should be defined with relations" do
      expect(thing.present?).to be_truthy
      expect(thing.category.present?).to be_truthy
      expect(thing.owner.present?).to be_truthy
      expect(thing.storage.present?).to be_truthy
      expect(thing.tags.present?).to be_truthy
      expect(thing.tags.count).to eq 3
      expect(thing.photos.present?).to be_truthy
      expect(thing.photos.count).to eq 2
    end
  end
end



