class CommentsController < ApplicationController
  def create
		@group = Group.find(params[:group_id])
		@comment = @group.comments.create(params[:comment].permit(:name, :body))

		redirect_to group_path(@group)
	end

	def destroy
		@group = Group.find(params[:post_id])
		@comment = @group.comments.find(params[:id])
		@comment.destroy

		redirect_to group_path(@group)
	end
end
