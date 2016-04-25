class ProfilesController < ApplicationController
  #index
  def index
    @profiles = Profile.all
  end

#show
  def show
    @profile = Profile.find(params[:id])
  end

#new
  def new
    @profile = Profile.new
  end

#create
  def create
    profile.create(profile_params.merge(user: current_user))
    @profile = Profile.create!(profile_params)
    @profile.save!
    redirect_to profile_path(@profile)
  end
  # edit
  def edit
    @profile = Profile.find(params[:id])
  end


  # update
  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    redirect_to profile_path(@profile)
  end

  #delete
  def destroy
    @profile = Profile.find(params[:id])
    if @profile.user == current_user
      @profile.destroy
    else
      flash[:alert] = "Only the owner of the profile can delete"
    end
    redirect_to profiles_path
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :photo_url)
  end
end
