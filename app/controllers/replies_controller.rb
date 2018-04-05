class RepliesController < ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @replies = Reply.all
  end

  def show
  end

  def new
    @reply = Reply.new
  end

  def edit
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.user_id = current_user.id

    respond_to do |format|
      if @reply.save
        format.html { redirect_to video_path(@reply.comment.video_id), notice: 'Reply was successfully created.' }
        format.json { render :show, status: :created, location: @reply }
      else
        format.html { render :new }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reply.update(reply_params)
        format.html { redirect_to video_path(@reply.comment.video_id), notice: 'Reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @reply }
      else
        format.html { render :edit }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reply.destroy
    respond_to do |format|
      format.html { redirect_to video_path(@reply.comment.video_id), notice: 'Reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_reply
      @reply = Reply.find(params[:id])
    end

    def reply_params
      params.require(:reply).permit(:comment_id, :user_id, :body)
    end
end
