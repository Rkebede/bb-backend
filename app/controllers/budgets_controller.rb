class BudgetsController < ApplicationController

  def index
    budgets = Budget.all
    render json: budgets
  end 

  def show
    budget = Budget.find_by(id: params[:id])
    render json: budget
  end 

  def delete
    budget = Budget.find_by(id: params[:id])
    budget.destroy
  end 

end
