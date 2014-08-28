class StaticPagesController < ApplicationController
  def home
    @micro_post = current_user.micro_posts.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def contact
  end
end
