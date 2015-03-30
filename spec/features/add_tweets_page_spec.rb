require 'rails_helper'

describe "the add tweets process" do
  it "adds a new tweet" do
    tweet = FactoryGirl.create(:tweet)
    visit tweets_path
    click_on "Tweet"
    fill_in "Comment", :with => "this is a tweet"
    expect(page).to have_content "Successfully"
  end

end
