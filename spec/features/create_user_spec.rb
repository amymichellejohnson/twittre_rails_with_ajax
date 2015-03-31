require "rails_helper"


describe "the create a user process" do
  it "creates a new user" do
    visit root_path
    click_on "sign_up"
    fill_in 'user_email', with: "derp@derp.com"
    fill_in 'user_password', with: "derpderp"
    fill_in 'user_password_confirmation', with: "derpderp"
    click_button "submit"
    expect(page).to have_content "successfully"
  end

    it "throws an error if a field is not entered when creating a new user" do
      visit root_path
      click_on "sign_up"
      fill_in 'user_password', with: "derpderp"
      fill_in 'user_password_confirmation', with: "derpderp"
      click_button "submit"
      expect(page).to have_content "can't be blank"

    end
end
