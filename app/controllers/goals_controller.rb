class GoalsController < ApplicationController

  #index
  def index
    @profile = Profile.find(params[:profile_id])
    @goals = @profile.goals.all
  end

  #show
  def show
    @profile = Profile.find(params[:profile_id])
    @goal = Goal.find(params[:id])
  end

  #new
  def new
    @profile = Profile.find(params[:profile_id])
    @goal = Goal.new
  end

  #create
  def create
    @profile = Profile.find(params[:profile_id])
    @goal = @profule.goals.create(goal_params)
    # @goal.save!
    redirect_to profile_goals_path(@profile, @goal)
  end

  #edit
  def edit
    @profile = Profile.find(params[:profile_id])
    @goal = Goal.find(params[:id])
  end

  #update
  def update
    @profile = Profile.find(params[:profile_id])
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)

    redirect_to profile_goals_path(@profile, @goal)
  end

  #destroy
  def destroy
    @profile = Profile.find(params[:profile_id])
    @goal = Goal.find(params[:id])
    @goal.destroy

    redirect_to profile_goals_path( @profile )
  end

  private
  def goal_params
    params.require(:goal).permit(:title, :description, :deadline, :category)
  end

end

end
