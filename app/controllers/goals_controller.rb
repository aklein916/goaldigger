class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.save!
    redirect_to @goal
  end

  private
  def goal_params
    params.require(:goal).permit(:title, :description, :deadline, :category)
  end

end

end
