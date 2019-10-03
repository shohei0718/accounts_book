class IncomesController < ApplicationController

  def index
    @incomes = Income.all
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(incomes_params)
    if @income.save
      redirect_to top_index_path
    else
      render :new
    end
  end
 
  private
  
  def incomes_params
    params.require(:income).permit(:id, :date, :amounts, :income_item_id)
  end

end
