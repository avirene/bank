feature "Select an action" do
  scenario "submitting a choice" do
    visit("/")
    fill_in :make_deposit, with: "2000"
    click_button "Submit"
    expect(page).to have_content "Success!"
  end
end
