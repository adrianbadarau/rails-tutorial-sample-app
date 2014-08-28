class MicroPostsController < ApplicationController

  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @micro_post = current_user.micro_posts.build(micro_post_params)
    if @micro_post.save
      flash[:success] = 'Post created'
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micro_post.destroy
    redirect_to root_path
  end

  private
    def micro_post_params
      params.require(:micro_post).permit(:content)
    end
    def correct_user
      @micro_post = current_user.micro_posts.find_by(id: params[:id])
      redirect_to root_path if @micro_post.nil?
    end

end
