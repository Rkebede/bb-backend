# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
  Budget.create(income: Faker::Number.between(from:1500, to:3000)) 
end  

Expense.create(name: Faker::Company.name, budget_id: 1, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 2, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 3, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 4, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 5, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 6, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 7, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 8, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 9, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 10, amount: Faker::Number.between(from:1, to:1000))
