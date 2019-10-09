class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budgets_params)
    if @budget.save
      redirect_to top_index_path
    else
      render action: "new"
    end
  end

  private

  def budgets_params
    params.require(:budget).permit(:budget, :begining, :ending, :outcome_item_id)
  end
end
