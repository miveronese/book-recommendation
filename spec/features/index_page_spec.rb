require 'spec_helper'
require 'rails_helper'
require 'pry'


describe "Index page" , type: :feature do

  it "expect to have reading suggestions" do
    visit "/books?utf8=%E2%9C%93&search=Carol"
    expect(page).to have_text("Here some reading suggestions based on people with similar taste")
  end

end