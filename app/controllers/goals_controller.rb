class GoalsController < ApplicationController
  #index
  def index
    @goals = Goal.all
  end

#show
  def show
    @goal = Goal.find(params[:id])
  end

#new
  def new
    if !user_signed_in?
      flash[:alert] = "You must be signed in to set your goals."
      redirect_to new_user_session_path
    else
        @goal = Goal.new
    end
  end

#create
  def create
    # Goal.create(goal_params.merge(user: current_user))
    @goal = Goal.create!(goal_params)
    redirect_to goal_path(@goal)
  end
  # edit
  def edit
    @goal = Goal.find(params[:id])
  end


  # update
  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)

    redirect_to goal_path(@goal)
  end

  #delete
  def destroy
    if !user_signed_in?
      flash[:alert] = "Only the owner of the goal can delete"
      redirect_to goals_path
    else
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to goals_path
    end
  end

  private
    def goal_params
      params.require(:goal).permit(:name, :age, :photo_url, :email, :title, :description, :deadline, :category, :step1, :step2, :step3)
  end
end
