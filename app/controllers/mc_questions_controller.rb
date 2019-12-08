class McQuestionsController < ApplicationController
  def index
    questions = McQuestion.all
    respond_to do |format|
      format.html { render :index, locals: { questions: questions } }
    end
  end

  def show
    question = McQuestion.find(params[:id])
    respond_to do |format|
      format.html { render :show, locals: { question: question } }
    end
  end

  def new
    question = McQuestion.new
    respond_to do |format|
      format.html { render :new, locals: { question: question } }
    end
  end

  def create
    question = McQuestion.new(params.require(:mc_question).permit(:question, :answer, :distractor_1, :distractor_2))
    respond_to do |format|
      format.html{
        if question.save
          flash[:success] = "Question saved successfully"
          redirect_to mc_questions_url
        else  
          flash.now[:error] = "Error: Question could not be saved"
          render :new, locals: { question: question }
        end
      }
    end
  end

  def edit
    question = McQuestion.find(params[:id])
    respond_to do |format|
      format.html { render :edit, locals: { question: question } }
    end
  end

  def update
    question = McQuestion.find(params[:id])
    respond_to do |format|
      format.html {
        if question.update(params.require(:mc_question).permit(:question, :answer, :distractor_1, :distractor_2))
          flash[:success] = 'Question updated successfully'
          redirect_to mc_questions_url
        else
          flash.now[:error] = 'Error: Question could not be updated'
          render :edit, locals: { question: question }
        end
      }
    end
  end

  def destroy
    question = McQuestion.find(params[:id])
    question.destroy
    respond_to do |format|
      format.html {
        flash[:success] = 'Questions removed successfully'
        redirect_to mc_questions_url
      }
    end
  end

end
