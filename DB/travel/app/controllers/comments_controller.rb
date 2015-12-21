class CommentsController < ApplicationController
	def create

	  # Get Article comment is attached to
    @article = Article.find(params[:article_id])
	  # Create and save comment
	  @comment = @article.comments.create(comment_params)
	  # Go to the article this comment is associated with
	  redirect_to article_path(@article)
	end

	private
	  def comment_params
	    params.require(:comment).permit(:commenter, :body)
	  end
end
