class IncomeItemsController < ApplicationController
  
  def new
    @item = IncomeItem.new
  end

  def create
    @item = IncomeItem.new(items_params)
    if @item.save
      redirect_to top_index_path
    else
      render :new
    end
  end

  private

  def items_params
    params.require(:income_item).permit(:title)
  end
end
