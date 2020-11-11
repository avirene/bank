feature "Test infrastructure" do
  scenario "Can run the app and check page content" do
    visit("/")
    expect(page).to have_content "Please create an account."
  end
end
