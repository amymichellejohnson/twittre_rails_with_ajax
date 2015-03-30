require "rails_helper"

describe "the create a user process" do
  it "creates a new user" do
    visit root_path
    click_on "sign-up"
    fill_in 'email', with: "derp@derp.com"
    fill_in 'password', with: "derpderp"
    fill_in 'password-confirmation', with: "derpderp"
    click_button "sign-up"
    expect(page).to have_content "successfully"

  end
end
