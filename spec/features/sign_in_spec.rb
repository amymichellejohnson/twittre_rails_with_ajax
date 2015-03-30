require "rails_helper"

describe "the log a user in process" do
  it "logs a user in" do
    visit root_path
    user = FactoryGirl.create(:user)
    click_on "sign_in"
    fill_in  "user_email", with: user.email
    fill_in  "user_password", with: user.password
    click_on "submit"
    expect(page).to have_content "Logged"
  end
end
