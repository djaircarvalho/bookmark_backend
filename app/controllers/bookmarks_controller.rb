class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :update, :destroy]

  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = @current_user.bookmarks
  end

  # GET /bookmarks/1
  # GET /bookmarks/1.json
  def show
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @bookmark = @current_user.bookmarks.new(bookmark_params)

    if @bookmark.save
      render :show, status: :created, location: @bookmark
    else
      render json: @bookmark.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookmarks/1
  # PATCH/PUT /bookmarks/1.json
  def update
    if @bookmark.update(bookmark_params)
      render :show, status: :ok, location: @bookmark
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.json
  def destroy
    @bookmark.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = @current_user.bookmarks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      params.require(:bookmark).permit(:name, :uri)
    end
end
