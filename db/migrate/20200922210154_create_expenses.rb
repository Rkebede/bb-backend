class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.text :name
      t.references :budget, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
