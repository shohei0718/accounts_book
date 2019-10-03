class CreateIncomeItems < ActiveRecord::Migration[5.2]
  def change
    create_table :income_items do |t|
      t.text :title, null: false

      t.timestamps
    end
  end
end
