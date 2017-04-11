class SessionsController < ApplicationController
  def new
    if logged_in?
      user = current_user
      redirect_to user
    end

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      flash[:success] = "Welcome to the S-Vietnam!"
      redirect_to user
    else
      # Create an error message.
      flash[:danger] = 'Email/password is not invalid'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
