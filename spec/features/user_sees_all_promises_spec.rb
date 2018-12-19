require "rails_helper"

describe "user sees all promises" do
  describe "they visit /promises" do
    before(:each) do
      @promise_1 = Promise.create!(title: "Patriots are terrible", from: "Scott", to: "Kevin", description: "If the Patriots some how lose to Broncos, I will take you to four Broncos game AND will wear a Bronco jersey")
      @promise_2 = Promise.create!(title: "Ruby is fun", from: "Steve", to: "Linda", description: "I will help you with enumerable exercixes.")
      @promise_3 = Promise.create!(title: "the best Pizza", from: "Phillip", to: "Mike", description: "Giordanos is the best pizza ever, I will take you there on Friday.")
    end
    it "displays all promises" do

      visit '/promises'

      expect(page).to have_content(@promise_1.title)
      expect(page).to have_content(@promise_2.title)
      expect(page).to have_content(@promise_3.title)
    end
  end
end
