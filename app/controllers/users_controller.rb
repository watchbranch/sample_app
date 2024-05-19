class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the Sample App!'
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end
  def show
    @user = User.find_by(id: params[:id])
    puts "Fetched user: #{@user.inspect}"
    if @user.nil?
      redirect_to root_url, alert: 'User not found.'
      return
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
