require "pry"

describe "a user visits comedian page" do
  context "visit /comedians" do
    it "user sees comedians list" do
      visit "/comedians"

      expect(current_path).to eq('/comedians')
      expect(page).to have_content("Comedians")
    end
  end
end
