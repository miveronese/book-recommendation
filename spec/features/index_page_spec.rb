require 'spec_helper'
require 'rails_helper'
require 'pry'


describe "Index page" , type: :feature do

  it "should have user's liked books" do
    visit "/books"
    expect(page).to have_css("#titles")
  end

  it "should have recommended books" do
    visit "/books"
    expect(page).to have_css("#recommendations")
  end


end