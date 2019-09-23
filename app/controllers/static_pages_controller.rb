class StaticPagesController < ApplicationController
  def welcome
    features = [
    "Choose from premade quizzes on a variety of topics",
    "Make your own quizzes to customize your learning",
    "Compare your scores with other users"
    ]
    respond_to do |format|
      format.html { render :welcome, locals: { features: features } }
      format.html { render :welcome }
    end
  end
  def about
    respond_to do |format|
      format.html { render :about }
    end
  end
  def contact
    respond_to do |format|
      format.html { render :contact }
    end
  end
  def leave_feedback
    respond_to do |format|
      format.html { render :contact }
    end
  end
end
