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

  def update
    expense = Expense.find_by(id: params[:id])
    expense.update(expense_params)
    render json: expense
  end 

  def destroy
    expense = Expense.find(params[:id])
    expense.destroy
  end 

end


private 

def expense_params
  params.require(:expense).permit(:name, :budget_id, :amount)
end