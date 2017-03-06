class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    if @query == "I'm going to work!"
      @answer = "FINALLY"
    elsif @query.include?("?")
      @answer = "Silly question! Go to work!"
    else
      @answer = "I don't care! Go to work!"
    end
  end
end
