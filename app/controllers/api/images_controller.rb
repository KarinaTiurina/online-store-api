module Api
  class ImagesController < ApplicationController
    def show
      image = Image.find(params[:id])
      render json: image, status: :ok
    end
  end
end
