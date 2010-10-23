class Admin::PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
   @post = Post.new(params[:post])
   if @post.save
     redirect_to admin_posts_path
   else
     render :action => :new
   end 
  end
  
end
