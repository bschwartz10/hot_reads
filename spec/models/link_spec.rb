require 'rails_helper'

RSpec.describe Link, type: :model do
  describe 'validations' do
    it "is valid with valid attributes" do
      link = Link.create(url: 'https://www.google.com/', count: 1)

      expect(link.url).to eq('https://www.google.com/')
      expect(link.count).to eq(1)
      expect(link).to be_valid
    end
    it "is invalid without a url" do
      link = Link.create(count: 1)

      expect(link).to_not be_valid
    end
  end
end
