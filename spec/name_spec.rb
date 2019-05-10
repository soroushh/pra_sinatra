require_relative "../app.rb"
scenario "We can see the full name after completing the form" do
  feature "The full name will be shown" do
    visit "/"
    fill_in("name", with:"soroush")
    fill_in("family", with:"khosravi")
    click_button("Submit")
    expect(page).to have_content("soroushkhosravi")
  end
end
