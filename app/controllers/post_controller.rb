class PostsController < ApplicationController

def new
@post = Post.new
end

def create
@post = Post.create(:title => params[:title], :body => params[:body], :userID => @current_user.id)
render :new


end

def index


end

end
