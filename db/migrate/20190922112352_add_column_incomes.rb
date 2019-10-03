class AddColumnIncomes < ActiveRecord::Migration[5.2]
  def change
    add_reference :incomes, :income_item, foreign_key: true
    add_column :incomes, :note, :text
  end
end
