class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    # @comments = Comment.where('flag')
    @comments = Comment.where(flag: true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
    @comments = Comment.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new()

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  def flag
    @comment = Comment.find(params[:id])
    @comment.flag = true
    @comment.save
    redirect_to @comment.song
  end

  def flagged_comments
      @comments = Comment.where(flag: true)
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @comment.song = Song.find(params[:song_id])
    @comment.save
    redirect_to song_path(@comment.song)
    # @comment.song =
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end
