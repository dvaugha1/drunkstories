class PostsController < ApplicationController
before_action :authenticate_user!, :only => [:create, :update, :destroy]
before_action :redirect_unless_user_match, :except => [:show, :index]

def create

end

private
def set_user
	@user = User.find[params(:id)]
end

def post_params
	 params.require(:post).permit(:title, :story)
end

end