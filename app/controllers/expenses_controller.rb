class ExpensesController < ApplicationController

  def index
    expenses = Expense.all
    render json: expenses
  end 

  def show
    expenses = Expense.find_by(id: params[:id])
    render json: expenses
  end 

  def delete
    expenses = Expense.find_by(id: params[:id])
    expenses.destroy
  end 

end
