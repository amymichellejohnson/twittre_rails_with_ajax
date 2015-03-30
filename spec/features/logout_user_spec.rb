require "rails_helper"

describe "the log a user out process" do
  it "logs a user out" do
    visit root_path
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "log_out"
    expect(page).to have_content "successfully"
  end
  it "doesn't allow anonymous to see log out link" do
    visit root_path
    expect(page).to_not have_content "log_out"
  end
end
