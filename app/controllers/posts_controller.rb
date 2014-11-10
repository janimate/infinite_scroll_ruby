class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json

def index
      @posts = Post.paginate(:page => params[:page]) # replaces Post.all
      respond_to do |format|
        format.html
        format.js # add this line for your js template
      end
end

    def home
      @posts = Post.where(:user_id => current_user.id).paginate(:page => params[:page])

    end

end
