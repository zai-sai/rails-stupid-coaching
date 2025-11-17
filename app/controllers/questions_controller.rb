class QuestionsController < ApplicationController
  def ask()
    @user_question = params[:member]
  end

  def answer()
  # TODO: return coach answer to your_message
    @question = params[:question].to_s
    if @question.match?("I am going to work right now!")
      return @answer = ""
    elsif @question.include?("?")
      return  @answer = "Silly question, get dressed and go to work!"
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
