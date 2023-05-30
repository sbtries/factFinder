class FactsController < ApplicationController
  include HTTParty

  def index
    url = 'https://api.api-ninjas.com/v1/facts?limit=1'
    response = HTTParty.get(
      url,
      "headers": {
        'X-Api-Key': ENV["API_KEY"]
      })
    @fact = response[0]["fact"] if response.code == 200
  end
end
