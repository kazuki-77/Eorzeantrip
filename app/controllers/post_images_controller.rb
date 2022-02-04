class PostImagesController < ApplicationController
  
  def new
  end
  
  def create
  end 
  
  def index
  end
  
  def show
  end
  
  def destroy
  end
  
  private
  
  def post_image_params
    params.require(:post_image).permit(:title, :caption, :image)
  end
end
