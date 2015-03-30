require 'rails_helper'

describe "the add a tweet process" do
  it "creates a new tweet if the user is logged in" do
    visit root_path
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "create_tweet"
    fill_in "tweet_body", with: "yaye now I'm tweeting!!1"
    click_on "submit"
    expect(page).to have_content "yaye now I'm tweeting!!1"
  end
  it "doesn't allow anonymous tweets to be added" do
    visit root_path
    expect(page).to_not have_content "create_tweet"
  end


end
