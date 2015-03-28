class PostsController < ApplicationController
before_action :authenticate_user!, :only => [:create, :update, :destroy]
before_action :redirect_unless_user_match, :except => [:show, :index]

def new
	@post = Post.new
	render :new
end

def create
	@user.posts.create(post_params)
end

private
def set_user
	@user = User.find[params(:id)]
end

def post_params
	 params.require(:post).permit(:title, :story)
end

end