class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only:  [:edit, :update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.paginate page:params[:page]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = 'Welcome to my sample App !'
      redirect_to @user #goes to the new users show profile page
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'User Deleted !'
    redirect_to users_path
  end

  def show
    @user = User.find params[:id]
    @micro_posts = @user.micro_posts.paginate(page: params[:page])
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def correct_user
      @user = User.find params[:id]
      redirect_to root_path unless current_user? @user
    end
    def admin_user
      redirect_to root_path unless current_user.admin?
    end
end
