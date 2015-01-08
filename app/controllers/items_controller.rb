class ItemsController < ApplicationController

  def new
  end
  
  def create
    Item.create(item_params)
    redirect_to :back
  end

  private
    
    def item_params
      params.require(:item).permit(
        :name,
        :format,
        :price_sell,
        :weight,
        :attack,
        :defence,
        :slots,
        :jobs,
        :genders,
        :weapon_lvl,
        :refine,:script)
    end

end