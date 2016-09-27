class CommentsController < ApplicationController
  before_action :authenticate_user!


  def create
		@group = Group.find(params[:group_id])
		@comment = @group.comments.create(comment_params)


		redirect_to group_path(@group)
	end

	def destroy
		@group = Group.find(params[:group_id])
		@comment = @group.comments.find(params[:id])
		@comment.destroy

		redirect_to group_path(@group)
	end

  private
    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end
