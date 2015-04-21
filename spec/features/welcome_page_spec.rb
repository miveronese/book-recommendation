require 'spec_helper'
require 'rails_helper'
require 'pry'


describe "Welcome page" , type: :feature do


  it "expect to have a search form" do
    visit "/"
    expect(page).to have_css("#search-form")
  end

  it "expect to have a text asking for user's input" do
    visit "/"
    expect(page).to have_text("Inform your name to get reading suggestions:")
  end

  it "expect to submit a search" do
    visit "/"
    within("#search-form") do
    fill_in 'search', :with => 'Carol'
  end
 
    click_button 'Go'
    url = "http://localhost:3000/books?utf8=%E2%9C%93&search=Carol"
    query = URI.parse(url).query
    CGI::parse query
  end

end