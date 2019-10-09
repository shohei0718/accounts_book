class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :budget, null: false
      t.date :begining, null: false
      t.date :ending, null: false
      t.references :budgets, :outcome_item, foreign_key: true
      t.timestamps
    end
  end
end
