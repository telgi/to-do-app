class UsersController < ApplicationController
  before_action :set_user
  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.'
      else
        render :new
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
