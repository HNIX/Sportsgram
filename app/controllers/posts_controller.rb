class PostsController < ApplicationController

def index
	@posts = Post.all
end

def new
  @post = Post.new
end

def create
  @post = Post.create( post_params )
  redirect_to posts_path
end

def show
  @post = Post.find(params[:id])
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def post_params
  params.require(:post).permit(:image, :caption)
end


end
