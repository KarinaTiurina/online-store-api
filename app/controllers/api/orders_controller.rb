module Api
  class OrdersController < ApplicationController
    def create
      order = Order.new(
        full_name: params[:fullName],
        phone: params[:phone],
        email: params[:email],
        address: params[:address]
      )

      if order.save && params[:basketItems].count > 0
        params[:basketItems].each do |item|
          OrderProduct.create(
            product: Product.find(item[:productId]),
            order: order,
            count: item[:count],
            price_per_product: item[:pricePerProduct]
          )
        end

        render json: {"result" => "OK"}, status: :ok
      else
        render json: {"message" => "Error"}, status: :error
      end
    end
  end
end
