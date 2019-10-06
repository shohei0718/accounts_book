class OutcomesController < ApplicationController

  def index
    @start_date = params[:start_date]
    @end_date   = params[:end_date]
    if @start_date || @end_date
      @outcomes = Outcome.search(@start_date, @end_date)
    else
      @outcomes = Outcome.this_month
    end
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
    params.require(:outcome).permit(:id, :date, :amounts, :outcome_item_id, :note).merge(user_id: current_user.id)
  end  


end
