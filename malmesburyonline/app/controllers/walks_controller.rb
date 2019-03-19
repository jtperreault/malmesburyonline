class WalksController < ApplicationController
  def index
    @walks = Walk.all
  end

  def show
    @walk = Walk.find(params[:id])
  end
end

