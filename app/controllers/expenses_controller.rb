class ExpensesController < ApplicationController

  def index
    expenses = Expense.all
    render json: expenses
  end 

  def show
    expenses = Expense.find_by(id: params[:id])
    render json: expenses
  end 

  def create
    render json: Expense.create(expense_params)
  end 

  def delete
    expenses = Expense.find_by(id: params[:id])
    expenses.destroy
  end 

end


private 

def expense_params
  params.require(:expense).permit(:name, :budget_id, :amount)
end