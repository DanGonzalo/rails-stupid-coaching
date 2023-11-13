QUESTION_WORK = "I'm going to work"
ANSWER_WORK = "Great!"
ANSWER_QUESTION = "Silly question, get dressed and go to work!"
ANSWER_ELSE = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController

  def ask
  end

  def answer
      @question = params[:question]
      @answer = stupid_coach(@question)
  end

  private

  def stupid_coach(str)
      is_question?(str) ? ANSWER_QUESTION : ((str == QUESTION_WORK) ? ANSWER_WORK : ANSWER_ELSE)
  end

  def is_question?(str)
      (str == nil) ? false : str.end_with?("?")
  end
end

# def answer
#   @question = params[:question]

#   if @question == "I am going to work"
#     @answer = "Great!"
#   elsif @question.include?("?")
#     @answer = "Silly question, get dressed and go to work!"
#   else
#     @answer = "I don't care, get dressed and go to work!"
#   end
# end
# end
