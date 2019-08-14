class CommentsController < ApplicationController

    def create
      #fail se usa para causar fallo y mirar parametros requeridos
      @comment = Comment.new(comment_params)
      @comment.article_id = params[:article_id]
      @comment.save
      #flash.notice = "comment '#{@comment.title}' Created!"
      redirect_to article_path(@comment.article)
    end

    def comment_params
      params.require(:comment).permit(:author_name, :body)
    end
      

end
