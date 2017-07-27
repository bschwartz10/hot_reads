require 'rails_helper'

describe "Links API" do
  it "can post a link" do

    link_data = {link: {url: 'https://google.com'}}

    post '/api/v1/links', params: link_data

    expect(response).to be_success

    JSON.parse(response.body)

    expect(Link.last.url).to eq('https://google.com')
    expect(Link.all.count).to eq(1)
  end
  it "view hot reads" do
     Link.create(url: 'https://www.google.com/', count: 4)
     Link.create(url: 'https://www.yahoo.com/', count: 1)
     Link.create(url: 'https://www.cnn.com/', count: 1)
     Link.create(url: 'https://www.cnet.com/', count: 1)
     Link.create(url: 'https://www.nbc.com/', count: 1)
     Link.create(url: 'https://www.foxnews.com/', count: 1)
     Link.create(url: 'https://www.barstoolsports.com/', count: 1)
     Link.create(url: 'https://www.ign.com/', count: 1)
     Link.create(url: 'https://www.reddit.com/', count: 1)
     Link.create(url: 'https://www.nba.com/', count: 1)
     Link.create(url: 'https://www.espn.com/', count: 1)

    get '/api/v1/links'

    expect(response).to be_success

    JSON.parse(response.body)

    expect(Link.all.count).to eq(11)
  end
end
