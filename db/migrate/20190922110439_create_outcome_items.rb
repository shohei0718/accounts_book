class CreateOutcomeItems < ActiveRecord::Migration[5.2]
  def change
    create_table :outcome_items do |t|
      t.text :title, null: false

      t.timestamps
    end
  end
end
