class CommentsController < ApplicationController
end
class CommentsController < ApplicationController
  def create
    # calls `find` to get the article in question before collecting the comments
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    # send user back to original article using article_path helper to call 'show' action
    redirect_to article_path(@article)
  end

  private 
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
