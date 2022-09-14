# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = the_answer(@question)
  end

  def the_answer(question)
    if question == 'I am going to work'
      'great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else question.end_with?(' ')
      `I don't care, get dressed and go to work!`
    end
  end
end
