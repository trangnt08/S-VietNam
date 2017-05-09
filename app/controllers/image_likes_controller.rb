class ImageLikesController < ApplicationController
  before_action :set_image_like, only: [:show, :edit, :update, :destroy]

  # GET /image_likes
  # GET /image_likes.json
  def index
    @image_likes = ImageLike.all
  end

  # GET /image_likes/1
  # GET /image_likes/1.json
  def show
  end

  # GET /image_likes/new
  def new
    @image_like = ImageLike.new
  end

  # GET /image_likes/1/edit
  def edit
  end

  # POST /image_likes
  # POST /image_likes.json
  def create
    @image_like = ImageLike.new(image_like_params)

    respond_to do |format|
      if @image_like.save
        format.html { redirect_to @image_like, notice: 'Image like was successfully created.' }
        format.json { render :show, status: :created, location: @image_like }
      else
        format.html { render :new }
        format.json { render json: @image_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_likes/1
  # PATCH/PUT /image_likes/1.json
  def update
    respond_to do |format|
      if @image_like.update(image_like_params)
        format.html { redirect_to @image_like, notice: 'Image like was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_like }
      else
        format.html { render :edit }
        format.json { render json: @image_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_likes/1
  # DELETE /image_likes/1.json
  def destroy
    @image_like.destroy
    respond_to do |format|
      format.html { redirect_to image_likes_url, notice: 'Image like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_like
      @image_like = ImageLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_like_params
      params.require(:image_like).permit(:user_id, :image_id, :like)
    end
end
