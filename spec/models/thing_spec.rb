require 'rails_helper'

describe Thing do
  context "relations" do
    let(:thing) { create :thing, :with_tags }

    it "should be defined with relations" do
      expect(thing.present?).to be_truthy
      expect(thing.category.present?).to be_truthy
      expect(thing.owner.present?).to be_truthy
      expect(thing.storage.present?).to be_truthy
      expect(thing.tag_references.present?).to be_truthy
      expect(thing.tag_references.count).to eq 3
    end
  end
end



