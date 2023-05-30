class FactsController < ApplicationController
  include HTTParty

  def index
    response = HTTParty.get('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
    @response = response.body if response.code == 200
    # puts response.body if response.code == 200
  end
end
