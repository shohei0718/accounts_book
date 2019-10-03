class OutcomeItemsController < ApplicationController

def new
    @item = OutcomeItem.new
  end

  def create
    @item = OutcomeItem.new(items_params)
    if @item.save
      redirect_to top_index_path
    else
      render :new
    end
  end

  private

  def items_params
    params.require(:outcome_item).permit(:title)
  end
end
