class PostCommentsController < InheritedResources::Base

  def create
    @post_comment = PostComment.new(post_params)
    if @post_comment.save
      flash[:notice] = "Comment created Successfully"
      redirect_to(@post_comment.post)
    else
      flash[:notice] = "Error in creating post comment : #{@post_comment.errors}"
      redirect_to(@post_comment.post)
    end
  end







    def post_params
      params.require(:post_comment).permit(:name, :email, :body, :post_id)
    end
end
