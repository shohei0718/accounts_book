class IncomesController < ApplicationController

  def index
    @start_date = params[:start_date]
    @end_date   = params[:end_date]
    if @start_date || @end_date
      @incomes = Income.search(@start_date, @end_date)
    else
      @incomes = Income.this_month
    end
    @sum = @incomes.sum(:amounts)
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
    params.require(:income).permit(:id, :date, :amounts, :income_item_id, :note).merge(user_id: current_user.id)
  end

end
