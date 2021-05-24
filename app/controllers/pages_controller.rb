class PagesController < ApplicationController

  def ask

  end

  def answer
    @askform = params[:askform]
    if @askform.downcase == "i am going to work!"
      @answer = "Great!"
    elsif @askform.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
