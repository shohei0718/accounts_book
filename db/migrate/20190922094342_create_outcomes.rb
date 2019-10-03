class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.integer :amounts, null: false
      t.date :date
      t.timestamps
    end
  end
end
