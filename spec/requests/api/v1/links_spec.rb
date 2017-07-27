require 'rails_helper'

describe "Links API" do
  xit "can post a link" do

    link_data = {url: 'https://google.com'}

    post '/api/v1/links', link_data

    expect(response).to be_success

    JSON.parse(response.body)

    expect(Link.last.url).to eq('https://google.com')
    expect(Link.all.count).to eq(1)
    expect(Link.last.count).to eq(1)
  end
end
