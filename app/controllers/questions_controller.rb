class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # @answer = Answer.select { |id, r| r[:ask] == @question }

    if @question == 'I am going to work'
      return @answer = 'Great!'
    elsif @question.end_with?('?')
      return @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
