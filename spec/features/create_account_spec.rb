feature "Create an account" do
  scenario "creating an account" do
    visit("/")
    click_button "Create an account"
    expect(page).to have_content "Please select an action."
  end
end
