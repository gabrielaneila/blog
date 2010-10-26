class Admin::LinksController < ApplicationController
  before_filter :get_current_post
  before_filter :get_current_link, :only => [:show, :edit, :update, :destroy]
  
  def index
    @links = @post.links
  end
  
  def show
  end

  def new
    @link  = @post.links.build
  end

  def create
    @link  = @post.links.build(params[:link])
    if @link.save
      redirect_to admin_post_path(@post)
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @link.update_attributes(params[:link])
      redirect_to admin_post_path(@post)
    else
      render :action => :edit
    end
  end

  def destroy
    @link.destroy
    redirect_to admin_post_path(@post)
  end

  protected
  def get_current_post
    @post = Post.find(params[:post_id])
  end

  def get_current_link
    @link = @post.links.find(params[:id])
  end
end


