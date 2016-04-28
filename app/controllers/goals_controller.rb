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
    @goal = Goal.new

  end

#create
  def create
    # Goal.create(goal_params.merge(user: current_user))
    @goal = Goal.create!(goal_params)
    @goal.save!
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
    @goal = Goal.find(params[:id])
    if @goal.user == current_user
      @goal.destroy
    else
      flash[:alert] = "Only the owner of the goal can delete"
    end
    redirect_to goals_path
  end

  private
    def goal_params
      params.require(:goal).permit(:name, :age, :photo_url, :email, :title, :description, :deadline, :category, :step1, :step2, :step3)
  end
end
