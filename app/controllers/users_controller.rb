class UsersController < ApplicationController
  def destroy
  if @user.signed_in? == true
    destroy_user_session
  end
    redirect_to root_path
  end
end
