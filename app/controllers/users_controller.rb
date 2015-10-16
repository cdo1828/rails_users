class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end


  def create
  	@user = User.create(user_params)
 
  	if @user.errors.any? then 
  		@message = @user.errors.full_messages
  		flash[:errors] = @message
  		redirect_to '/users/new'
  else 
  		flash[:success] = "Successfully created new user"
  	redirect_to '/users'
  end
end

  def edit
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to '/users'
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to '/users'
  end



  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
