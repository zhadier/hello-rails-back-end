class V1::GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[show update destroy]

  # GET /greetings
  def index
    @greeting = Greeting.find(Greeting.pluck(:id).sample)
    render json: { greeting: @greeting.greeting }
  end
end
