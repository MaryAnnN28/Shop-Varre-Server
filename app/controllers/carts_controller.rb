class CartsController < ApplicationController

  def show 
    cart = Cart.new(cart_serializer_options)
    cart.save
    render json: cart.to_json()
  end

  def update
    cart = Cart.find(params[:id])
    cart.update(cart_serializer_options)
    render json: cart.to_json()
  end

  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
  end

  private

  def cart_serializer_options()
    { 
      except: [:updated_at, :created_at]
     }
  end

  


end
