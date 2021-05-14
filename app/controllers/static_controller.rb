class StaticController < ApplicationController

  def home
    render json: { status: "Varre Shop is working"}
  end


end
