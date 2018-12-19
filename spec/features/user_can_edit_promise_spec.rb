require 'rails_helper'


describe "user edits a promise" do
  describe "user start from promise show page" do
    it "edits a promise" do
      new_title = "New Title!"
      new_from = "politician"
      new_to = "America"

      promise_1 = Promise.create(title: "This is a Promise", from: "some person", to: "people", description: "I will be the best, you wont believe it")

      visit promise_path(promise_1)

      click_on "Edit"

      fill_in "promise[title]", with: new_title
      fill_in "promise[from]",  with: new_from
      fill_in "promise[to]",  with: new_to

      click_on "Update Promise"


      expect(current_path).to eq(promise_path(promise_1))
      expect(page).to have_content(new_title)
      expect(page).to have_content(new_from)
      expect(page).to have_content(new_to)
      expect(page).to have_content("Promise '#{new_title}' updated!")
    end
  end
end
