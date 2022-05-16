class QuestionsController < ApplicationController
  def ask
    # test
  end

  def answer
    @question = params[:question] if params[:question]
    @answer = case @question
              when 'I am going to work' then 'Great!'
              when /^.*\?$/ then 'Silly question, get dressed and go to work!'
              else "I don't care, get dressed and go to work!"
              end
  end
end
