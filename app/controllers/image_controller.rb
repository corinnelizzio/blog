class ImageController < ApplicationController
  before_action :authenticate_user!
  before_action :the_image, only: [:show, :update, :destroy, :edit]

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save!
      redirect_to action: :index
    end
  end

  def update
    if @image.update_attributes!(image_params)
      redirect_to @image
    end
  end

  def destroy
    if @image.destroy!
      redirect_to action: :index
    end
  end

  def edit
  end

  private

  def the_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:image)
  end
end
