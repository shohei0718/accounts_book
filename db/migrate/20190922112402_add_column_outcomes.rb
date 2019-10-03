class AddColumnOutcomes < ActiveRecord::Migration[5.2]
  def change
    add_reference :outcomes, :outcome_item, foreign_key: true
    add_column :outcomes, :note, :text
  end
end
