class ItemsController < ApplicationController

  def index
    render json: Item.all.to_json(item_serializer_options)
  end

  def show
    item = Item.find(params[:id])
    render json: item.to_json(item_serializer_options)
  end

  def update 
    item = Item.find(params[:id])
    item.update
    render json: item
  end
  

  private

  def item_serializer_options()
    { 
      except: [:updated_at]
     }
  end

  


end
