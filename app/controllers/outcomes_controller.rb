class OutcomesController < ApplicationController

  def index
    @outcomes = Outcome.all
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
