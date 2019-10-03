class IncomesController < ApplicationController

  def index
  # 一覧には当月分の支出一覧のみ表示させる
    @incomes = Income.where(date: Time.now.all_month)
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
    params.require(:income).permit(:id, :date, :amounts, :income_item_id)
  end

end
