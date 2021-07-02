class ItemsController < ApplicationController
  before_action :find_item, only: :order
  
  def index
    @items = Item.all
  end

  def order
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end
  
end
