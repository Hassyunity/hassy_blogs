class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    puts "PARAMS COMMENT: #{comment_params.inspect}"
    if @comment.save
        redirect_back fallback_location: root_path, notice: "Merci pour votre commentaire !"
    else
        redirect_back fallback_location: root_path, alert: "Erreur lors de l'envoi de votre commentaire."
    end
  end

  private

 def comment_params
  params.require(:comment).permit(:name, :content)
end
end
