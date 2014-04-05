class PhotosController < ApplicationController
  before_action :set_photo, only: [:edit, :update, :destroy]

  # GET /photos/new
  def new
    @photo = Photo.new(:album_id => params[:album_id])
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Successfully uploaded photo."
      redirect_to @photo.album
    else
      render :action => 'new'
    end
  end

  def edit
    #@photo = Photo.find(params[:id])
  end

  def update
    #@photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      flash[:notice] = "Successfully updated photo."
      redirect_to @photo.album
    else
      render :action => 'edit'
    end
  end

  def destroy
    #@photo = Photo.find(params[:id])
    @photo.destroy
    flash[:notice] = "Successfully deleted photo."
    redirect_to @photo.album
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:caption, :image, :album_id)
    end
end
