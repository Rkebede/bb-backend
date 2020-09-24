class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.references :budget, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
