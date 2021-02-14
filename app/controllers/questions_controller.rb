class QuestionsController < ApplicationController

  def index
  end

  def new
    @questions = Question.all
  end

  def answer
    @questions = Question.all
  end


end
