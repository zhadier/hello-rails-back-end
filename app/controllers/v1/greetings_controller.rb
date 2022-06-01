class V1::GreetingsController < ApplicationController
  # GET /greetings
  def index
    @greeting = Greeting.find(Greeting.pluck(:id).sample)
    render json: { greeting: @greeting.greeting }
  end
end
