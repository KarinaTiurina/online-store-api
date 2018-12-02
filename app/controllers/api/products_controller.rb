module Api
  class ProductsController < ApplicationController
    def index
      products = Product.all
      render json: {data: products}, include: 'images', status: :ok
    end
  end
end
