class CommentsController < ApplicationController

	 before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @candidate = Candidate.find(params[:candidate_id])
    @comment = Comment.new(comment_params)
    @comment.candidate_id = @candidate.id
    respond_to do |format|
          if @comment.save
            format.html { redirect_to candidate_path(@candidate), notice: 'Comment was successfully created.' }
            format.json { render :show, status: :created, location: @comment }
          else
            format.html { redirect_to candidate_path(@candidate), notice: 'Comment Cannot be blank' }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
          end
    end
  end


  # end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:voter_id, :content, :post_id)
    end

end
