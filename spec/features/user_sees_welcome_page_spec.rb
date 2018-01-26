require "pry"

describe "a user visits welcome page" do
  context "visit /" do
    it "user sees a welcome message" do
      visit "/"

      expect(current_path).to eq('/')
      expect(page).to have_content("Welcome")
    end
  end
end
