require "rails_helper"

describe "user creates a new promise" do
  describe "they link from the promises index" do
    describe "they fill in form" do
      it "creates a new promise" do
        new_title = "New Title!"

        visit promises_path

        click_link "Create a New Promise"

        expect(current_path).to eq(new_promise_path)

        fill_in "promise[title]", with: new_title
        fill_in "promise[from]",  with: "person 1"
        fill_in "promise[to]", with: "person 2"
        fill_in "promise[description]", with: "this is what I will do"

        click_on "Create Promise"

        expect(page).to have_content("New Title!")
        expect(page).to have_content("person 1")
        expect(page).to have_content("Promise '#{new_title}' created!")
        expect(page).to have_content("this is what I will do")
      end
    end
  end
end
