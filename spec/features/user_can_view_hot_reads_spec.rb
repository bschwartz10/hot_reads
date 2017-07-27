require "rails_helper"

describe "Index hot reads page" do
  it "User visits hot reads index page and should see hot links" do
    Link.create(url: 'https://www.google.com/')

    visit root_path

    expect(page).to have_content('1. https://www.google.com/')
  end

end
