class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_url and return unless true
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      UserMailer.signup_confirmation(@user).deliver_now
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'new'
    end
  end

  def user_params
  	params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
end
