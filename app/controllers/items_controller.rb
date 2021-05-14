class ItemsController < ApplicationController

  def index
    render json: Item.all.to_json(item_serializer_options)
  end

  def show
    item = Item.find(params[:id])
    render json: item.to_json(item_serializer_options)
  end

  private

  def item_serializer_options()
    { 
      except: [:updated_at]
     }
  end

  


end
