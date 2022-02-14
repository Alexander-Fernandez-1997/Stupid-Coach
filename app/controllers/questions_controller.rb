class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = "I don't care, get dressed and go to work!"
    @question = params[:query]


  if @question.present?
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    # else puts "I don't care, get dressed and go to work!"
    end
  end
  end
end
