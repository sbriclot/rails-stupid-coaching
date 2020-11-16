class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    # TODO: return coach answer to your_message, with additional custom rules of yours!
    return @answer = "Great!" if @question.upcase == "I AM GOING TO WORK RIGHT NOW!"

    # TODO: return coach answer to your_message
    if @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
