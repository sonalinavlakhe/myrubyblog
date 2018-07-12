class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user =AdminUser.all
    @post_comment =PostComment.new(:post => @post)
  end

  def new
    @post = Post.new
  #  @category =Category.all
  end

  def create
    @post = Post.new (user_params)
    if @post.save
      redirect_to posts_path , :notice => "New Post created Successfully"
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(user_params)
      redirect_to post_path ,:notice => "Post Updated Successfully"
    else
      render "edit"
    end
  end

  def destroy
    @post =Post.find(params[:id])
    @post.destroy
    redirect_to posts_path , :notice => "Post deleted Successfully"
  end

private

def user_params
  params.require(:post).permit(:title,:body,:category_id)
end



end
