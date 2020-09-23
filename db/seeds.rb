# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Budget.create(income: Faker::Number.between(from:1500, to:3000)) 
Budget.create(income: Faker::Number.between(from:1500, to:3000)) 

Expense.create(name: Faker::Company.name, budget_id: 1, amount: Faker::Number.between(from:1, to:1000))
Expense.create(name: Faker::Company.name, budget_id: 2, amount: Faker::Number.between(from:1, to:1000))
