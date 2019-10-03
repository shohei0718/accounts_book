class OutcomesController < ApplicationController

  def index
  # 一覧には当月分の支出一覧のみ表示させる
    @outcomes = Outcome.where(date: Time.now.all_month)
    @sum = @outcomes.sum(:amounts)

  end

  def new
    @outcome = Outcome.new
  end

  def create
    @outcome = Outcome.new(outcomes_params)
    if @outcome.save
      redirect_to top_index_path
    else
      render :new
    end
  end

  private

  def outcomes_params
    params.require(:outcome).permit(:id, :date, :amounts, :outcome_item_id)
  end  


end
