class CartItemsController < ApplicationController

  skip_before_action :authorized, only: [:index, :destroy]

  def index
    render json: CartItem.all.to_json(cart_item_serializer_options)
  end

  def show
    cartItem = CartItem.find(params[:id])
    render json: cartItem.to_json(cart_item_serializer_options)
  end

  def create
    cartItem = CartItem.new(cart_item_params)
    cartItem.save
    render json: cartItem.to_json()
  end

  def update
    cartItem = CartItem.find_by(user_id: current_user.id, item_id: cart_item_params[:item_id])
    render json: cartItem.to_json()
  end

  def destroy
    cartItem = CartItem.find(params[:id])
    cartItem.destroy
  end

  private

  def cart_item_serializer_options()
    { 
      except: [:created_at, :updated_at]
    }
  end

  def cart_item_params
    params.require(:cart_item).permit(:cart_id, :item_id, :quantity)
  end

    
end
