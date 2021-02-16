class QuestionsController < ApplicationController

  def index
  end

  def new
    @questions = Question.all
  end

  def new2
    @question = Question.new
end

  def answer
    @questions = Question.all
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :content, :option1, :option2, :option3, :option4, :answer, :commentary).merge(user_id: current_user.id)
  end
  
end

# 「protospace-31747/app/controllers/prototypes_controller.rb」をコピー
# class PrototypesController < ApplicationController
#   before_action :authenticate_user!, except: [:index, :show]

#   def index
#     @prototypes = Prototype.all
#   end

#   def new
#     @prototype = Prototype.new
#   end

#   def show
#     @prototype = Prototype.find(params[:id])
#     @comment = Comment.new
#     @comments = @prototype.comments.includes(:user)
#   end

#   def edit
#     @prototype = Prototype.find(params[:id])
#     unless user_signed_in?
#       redirect_to action: :index
#     end
#     end

#   def update
#     prototype = Prototype.find(params[:id])
#     if prototype.update(prototype_params)
#       redirect_to prototype_path
#     else
#       render :edit
#     end
#   end

#   def destroy
#     prototype = Prototype.find(params[:id])
#     if prototype.destroy
#       redirect_to root_path
#     end
#   end

#   def create
#     @prototype = Prototype.create(prototype_params)
#     if @prototype.save
#       redirect_to root_path
#     else
#       render :new
#     end
#   end

#   private
#   def prototype_params
#     params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
#   end
# end
