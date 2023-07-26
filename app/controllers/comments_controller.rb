class CommentsController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_url, alert: "Acceso denegado."
      end
    def new
      @comment = Comment.new
    end

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.build(comment_params)
        @comment.user = current_user # Asocia el comentario al usuario actualmente autenticado

        if @comment.save
            redirect_to request.fullpath, notice: 'Comentario creado correctamente.'
        else
            redirect_to request.fullpath, alert: 'No se pudo crear el comentario.'
        end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  
    def find_commentable
      if params[:commentable_type] == 'Article'
        Photo.find(params[:commentable_id])
      elsif params[:commentable_type] == 'User'
        User.find(params[:commentable_id])
      end
    end
end
