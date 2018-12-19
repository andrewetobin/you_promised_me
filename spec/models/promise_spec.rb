require "rails_helper"

describe Promise, type: :model do
  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:from)}
    it {should validate_presence_of(:to)}
    it {should validate_presence_of(:description)}
  end
end
