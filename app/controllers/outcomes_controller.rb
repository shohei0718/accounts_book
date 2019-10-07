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

  def edit
    @outcome = Outcome.find(params[:id])
  end

  def update
    @outcome = Outcome.find(params[:id])
    if @outcome.update(outcomes_params)
      redirect_to outcomes_path,
        flash: { confirm: '更新が完了しました'}
    else
      render action: "edit"
    end
  end

  def destroy
    @outcome = Outcome.find(params[:id])
    @outcome.destroy
    redirect_to outcomes_path
  end

  private

  def outcomes_params
    params.require(:outcome).permit(:id, :date, :amounts, :outcome_item_id, :note).merge(user_id: current_user.id)
  end  


end
