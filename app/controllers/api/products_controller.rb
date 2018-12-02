module Api
  class ProductsController < ApplicationController
    def index
      products = Product.all
      render json: products, include: 'images', status: :ok
    end

    def show
      product = Product.find(params[:id])
      render :json => product.to_json(:include => [:images])
    end
  end
end
