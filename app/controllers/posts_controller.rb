class PostsController < ApplicationController

def new
@post = Post.new
end

def create
@post = Post.create(:title => params[:title], :body => params[:body])
redirect_to posts_path


end

def index
 @posts = Post.all

end

def update

end

end
